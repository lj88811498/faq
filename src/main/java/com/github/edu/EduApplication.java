package com.github.edu;

import com.github.edu.config.properties.GunsProperties;
import com.github.edu.core.util.SpringContextHolder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

/**
 * SpringBoot方式启动类
 * @author stylefeng
 * @Date 2017/5/21 12:06
 */
@SpringBootApplication
@EnableScheduling
//@PropertySource(value = {"file:/data/test/mysql.properties"})
public class EduApplication extends WebMvcConfigurerAdapter {

    private final static Logger logger = LoggerFactory.getLogger(EduApplication.class);
    @Autowired
    GunsProperties gunsProperties;
    /**
     * 增加swagger的支持
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        if (gunsProperties.getSwaggerOpen()) {
            registry.addResourceHandler("swagger-ui.html").addResourceLocations("classpath:/META-INF/resources/");
            registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
        }
    }

    public static void main(String[] args) {
//        args = new String[]{"--spring.config.location=http://172.16.0.181:8083/config/getConfig.properties/DB/dev/1.0/.properties"};
//        args = new String[]{"--spring.config.location=http://172.16.25.175:28083/config/getConfig.properties/paas/dev/1.0/1.yml"};
        ApplicationContext application = SpringApplication.run(EduApplication.class, args);
        logger.info("EduApplication is success!");
        Environment env = application.getEnvironment();
        SpringContextHolder.setAppContext(application);
    }
}
