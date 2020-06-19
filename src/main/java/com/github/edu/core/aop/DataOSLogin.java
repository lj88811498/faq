package com.github.edu.core.aop;

import com.github.edu.config.properties.DataOsProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Monkey on 2016/6/7.
 */

@RestControllerAdvice
public class DataOSLogin implements HandlerInterceptor {
//    @Autowired
//    IUserInfoService userInfoService;

    @Autowired
    DataOsProperties dataOsProperties;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
//        String token = request.getHeader("accessToken");//从请求头中获取accessToken
//        String token1 = GlobalHashMap.getToken();//从系统中获取缓存的accessToken
//        //对比accessToken，一致则放行，不一致则返回用户未登录
//        if (token != null && token1 != null && token.equals(token1)) {
//            return true;
//        } else {
//            JSONObject json = JsonUtil.dataOSFailJson();
//            response.getWriter().append(json.toString());
//            return false;
//        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object obj, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception e) throws Exception {

    }
}
