package com.github.edu.modular.edu.socket;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 监听器类:主要任务是用ServletRequest将我们的HttpSession携带过去
 */
@Component //此注解千万千万不要忘记，它的主要作用就是将这个监听器纳入到Spring容器中进行管理,相当于注册监听吧
public class RequestListener implements ServletRequestListener {
  @Override
  public void requestInitialized(ServletRequestEvent sre) {
    //将所有request请求都携带上httpSession
      HttpSession httpSession= ((HttpServletRequest) sre.getServletRequest()).getSession();
      String uid = sre.getServletRequest().getParameter("uid");
//      System.out.println("将所有request请求都携带上httpSession " + httpSession.getId());
      if (StringUtils.isNotBlank(uid)) {
          httpSession.setAttribute("uid", uid);
//          SysContent.setRequest((HttpServletRequest) sre.getServletRequest());
          SysContent.setUserLocal(uid);
      }

  }

  public RequestListener() {
  }

  @Override
  public void requestDestroyed(ServletRequestEvent arg0) {
  }
}