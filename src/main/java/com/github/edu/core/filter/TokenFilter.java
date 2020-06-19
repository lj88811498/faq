package com.github.edu.core.filter;

import com.github.edu.modular.edu.util.CommonConstant;
import com.github.edu.modular.edu.util.JWTUtil;
import org.apache.commons.lang3.StringUtils;
import org.codehaus.groovy.syntax.TokenUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/**
 * 设置跨域请求
 *
 * @author Monkey
 * @date 2020-05-28
 */
//多个以逗号分开 (urlPatterns={})
@WebFilter("/*")
@Component
public class TokenFilter implements Filter {

    public FilterConfig config;

    public static String prefix = "/api";

    private static final Set<String> ALLOWED_PATHS = Collections.unmodifiableSet(
            //放开swagger
            new HashSet<>(Arrays.asList(
                    prefix + "/swagger-ui.html",
                    prefix + "/v2/api-docs",
                    prefix + "/swagger-resources",
                    prefix + "/webjars/springfox-swagger-ui/images/favicon-32x32.png",
                    prefix + "/swagger-resources/configuration/security",
                    prefix + "/swagger-resources/configuration/ui")));

    @Value("${swagger.key}")
    private String key;

    @Value("${swagger.tokenSwitch}")
    private boolean tokenSwitch;

    @Value("${swagger.defaultValue}")
    private String defaultValue;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.config = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String path = request.getRequestURI();
        if (StringUtils.isNotBlank(path)) {
            path = path.substring(request.getContextPath().length()).replaceAll("[/]+$", "");
        }
        boolean allowedPath = ALLOWED_PATHS.contains(path);
        if (!allowedPath) {
            if (tokenSwitch) {
                String check = request.getHeader(key);
                if (StringUtils.isNotBlank(check) && check.startsWith(CommonConstant.TOKEN_SPLIT)) {
                    String token = JWTUtil.getToken(request);
                    if (StringUtils.isNotBlank(token)) {
                        Integer userId = JWTUtil.getUserId(request);
                        if (userId == null) {
//                        response.sendError(-1, key + " is overdue ");
                            response.getWriter().print(key + " is overdue");
                            return;
                        }
                    } else {
                        response.getWriter().print(key + " is not null");
                        return;
                    }
                    //判断用户是否存在
                    filterChain.doFilter(request, response);
                    return;
                } else {
                    response.getWriter().print(key + " is not null");
                    return;
                }
            } else {
                filterChain.doFilter(request, response);
            }
        } else {
            filterChain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
