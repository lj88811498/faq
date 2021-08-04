package com.github.edu.modular.edu.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.github.edu.core.util.JsonUtil;
import com.github.edu.modular.edu.model.Faq;
import com.github.edu.modular.edu.service.IFaqService;
import com.github.edu.modular.edu.socket.WebSocketServer;
import com.github.edu.modular.edu.util.ExceptionUtil;
import com.github.edu.modular.edu.util.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/svc")
public class TestController {

    private static String PREFIX = "/code";

    @Autowired
    private IFaqService faqService;

    @RequestMapping("")
    public String index() {
       return "/test.html";
    }

    @RequestMapping("faq")
    public String test() {
        return "/socket/test.html";
    }

    @RequestMapping("a")
    public String sso() {
        return "/sso/a.html";
    }
    @RequestMapping("b")
    public String sso2() {
        return "/sso/b.html";
    }

    @RequestMapping("send")
    @ResponseBody
    public Object send(String sid) throws IOException {
        R r = new R();
        try {
            WebSocketServer.sendInfo("全体广播了！！！" + new Random().nextInt(), sid);
            return JsonUtil.createOkJson();

        } catch (Exception e) {
            r = ExceptionUtil.getException(e);
        }

        return r;
    }

    @RequestMapping("question")
    @ResponseBody
    public Object question(int id) throws IOException {
        R r = new R();
        try {
            List<String> list = new ArrayList<>();
            list.add("faq_type");

            List<Faq>  faqs = faqService.selectList(new EntityWrapper<Faq>().where("FIND_IN_SET( " + id +",faq_pid) > 0").orderAsc(list));
            if (faqs.size() > 0) {
                String info = "<a href=\"javascript:;\" onclick=\"q(#id#);a(this.innerHTML,1)\">";

                String suffix = "</a><br/>";

                String line = "<br/>";

                String context = "";

                for (Faq faq : faqs) {
                    if (faq.getFaqType().equals("2")) {
                        context += info.replaceAll("#id#", faq.getFaqId().toString()) + faq.getFaqInfo() + suffix;
                    } else {
                        context += faq.getFaqInfo().replaceAll("#id#", faq.getFaqId().toString()) + line;
                    }
                }

                context += "<a href=\"javascript:;\" onclick=\"q(0);a(this.innerHTML,1)\">" + "返回首页" + suffix;

                r.setData(context);
            } else {
                r.setData("智障机器人正在学习中....还请大侠稍等几日...");
            }
        } catch (Exception e) {
            r = ExceptionUtil.getException(e);
        }

        return r;
    }

}
