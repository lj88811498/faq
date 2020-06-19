package com.github.edu.modular.edu.socket;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.github.edu.core.util.SpringContextHolder;
import com.github.edu.modular.edu.model.Faq;
import com.github.edu.modular.edu.service.IFaqService;
import com.github.edu.modular.edu.util.RecordLogUtil;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Type: WebSocketServer
 * Description: WebSocketServer,实现服务器客户端平等交流，达到服务器可以主动向客户端发送消息
 *
 * @author Monkey
 * @date 2020-05-23
 */
//@ServerEndpoint("/websocket/{user}")
@ServerEndpoint(value = "/websocket")
@Component
public class WebSocketServer {
    
    private IFaqService faqService = SpringContextHolder.getBean(IFaqService.class);
    //日志记录器
    private static final Logger LOGGER = LoggerFactory.getLogger(WebSocketServer.class);

    //高效，弱一致性，放的是WebSocketServer而非session是为了复用自身的方法
    private static transient volatile Set<WebSocketServer> webSocketSet = ConcurrentHashMap.newKeySet();

    private static transient volatile Set<WebSocketServer> tempWebSocketSet = ConcurrentHashMap.newKeySet();

    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    private Session session;

    private static transient ConcurrentHashMap<String, Session> map = new ConcurrentHashMap();

    /**
     * Title: sendInfo
     * Description: 群发消息
     * @param message
     */
    public static void sendInfo(String message, String sid) throws IOException {
        LOGGER.info("webSocket-sendInfo群发消息：" + message);
        RecordLogUtil.info("在线人数：" + getOnlineCount());
        if (StringUtils.isNotBlank(sid)) {
            Set<Map.Entry<String, Session>> entries = map.entrySet();
            for(Map.Entry<String, Session> m : entries){
                if (m.getKey().equals(sid)) {
                    Session s2 = m.getValue();
                    webSocketSet.forEach(ws -> {
                        if (ws.session.getId() == s2.getId()) {
                            ws.sendMessage(message);
                            return;
                        }
                    });
                    map.remove(m);
                    break;
                }
            }
        } else {
//            for (WebSocketServer item : webSocketSet) {
//                //判断session
//                item.sendMessage(message);
//            }
            tempWebSocketSet = ConcurrentHashMap.newKeySet();
            for (Map.Entry<String, Session> m : map.entrySet()) {
                Session s2 = m.getValue();
                webSocketSet.forEach(ws -> {
                    if (ws.session.getId() == s2.getId()) {
                        ws.sendMessage(message);
                        tempWebSocketSet.add(ws);
                        return;
                    }
                });
            }
            webSocketSet = tempWebSocketSet;
        }

    }

    /**
     * Title: getOnlineCount
     * Description: 获取连接数
     * @return
     */
    public static int getOnlineCount() {
        return webSocketSet.size();
    }
    /* *********************以下为非static方法************************** */
    /**
     * Title: sendMessage
     * Description: 向客户端发送消息
     * @param message
     * @throws IOException
     */
    public boolean sendMessage(String message) {
        try {
            this.session.getBasicRemote().sendText(message);
            return true;
        } catch (IOException error) {
            LOGGER.error("webSocket-sendMessage发生错误:" + error.getClass() + error.getMessage());
            return false;
        }
    }
    /**
     * 连接建立成功调用的方法*/
    @OnOpen
    public void onOpen(Session session, EndpointConfig config) throws IOException {
//        HttpServletRequest request = HttpKit.getRequest();
//        RecordLogUtil.info(request.getSession().getId());
//        RecordLogUtil.info(id);
//        String sid = SysContent.getRequest().getParameter("sid");
        String uid = SysContent.getUserLocal();
//        RecordLogUtil.info("sid=" + sid);
        RecordLogUtil.info("uid=" + uid);
        this.session = session;
        if (StringUtils.isBlank(uid)){
            sendMessage("连接失败");
            session.close();
            return;
        } else {
            map.put(uid, this.session);

            webSocketSet.add(this);     //加入set中
            sendMessage("连接成功");
            RecordLogUtil.info("当前在线人数： " + getOnlineCount());
            
            //展示首页
            Faq faq = faqService.selectOne(new EntityWrapper<Faq>().eq("faq_type", "0"));
            sendMessage(faq.getFaqInfo());
        }
    }

    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose() {
        webSocketSet.remove(this);  //从set中删除
        //这里要删除map里面对象
        for(Map.Entry<String, Session> m : map.entrySet()){
            if (m.getValue() == this.session) {
                map.remove(m);
                RecordLogUtil.info("用户" + m.getKey() + "已关闭连接！");
                break;
            }
        }
        RecordLogUtil.info("在线人数：" + getOnlineCount() + ", 关联在线人数：" + map.size());
    }

    /**
     * 收到客户端消息后调用的方法
     * @param message 客户端发送过来的消息*/
    @OnMessage
    public void onMessage(String message, Session session) {
        LOGGER.info("来自客户端(" + session.getId() + ")的消息:" + message);
        sendMessage("Hello, nice to hear you! There are " + webSocketSet.size() + " users like you in total here!");
    }

    /**
     * Title: onError
     * Description: 发生错误时候回调函数
     * @param session
     * @param error
     */
    @OnError
    public void onError(Session session, Throwable error) {
        LOGGER.error("webSocket发生错误:" + error.getClass() + error.getMessage());
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }
}
