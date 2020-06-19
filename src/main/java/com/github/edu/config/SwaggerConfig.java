package com.github.edu.config;

import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.ParameterBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.schema.ModelRef;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Parameter;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;
import java.util.List;

import static com.sun.jersey.core.header.FormDataContentDisposition.name;

/**
 * swagger配置类
 *
 * @author fengshuonan
 * @date 2017年6月1日19:42:59
 */
@Configuration
@EnableSwagger2
@ConditionalOnProperty(prefix = "guns", name = "swagger-open", havingValue = "true")
public class SwaggerConfig{

    @Value("${swagger.key}")
    private String key;

    @Value("${swagger.tokenSwitch}")
    private boolean tokenSwitch;

    @Value("${swagger.defaultValue}")
    private String defaultValue;


    @Bean
    public Docket createRestApi() {
//        List<ResponseMessage> responseMessageList = new ArrayList<>();
//        responseMessageList.add(new ResponseMessageBuilder().code(404).message("找不到资源").responseModel(new ModelRef("ApiError")).build());
//        responseMessageList.add(new ResponseMessageBuilder().code(409).message("业务逻辑异常").responseModel(new ModelRef("ApiError")).build());
//        responseMessageList.add(new ResponseMessageBuilder().code(422).message("参数校验异常").responseModel(new ModelRef("ApiError")).build());
//        responseMessageList.add(new ResponseMessageBuilder().code(500).message("服务器内部错误").responseModel(new ModelRef("ApiError")).build());
//        responseMessageList.add(new ResponseMessageBuilder().code(503).message("Hystrix异常").responseModel(new ModelRef("ApiError")).build());

        List<Parameter> parameters = new ArrayList<>();
        ParameterBuilder parameterBuilder = new ParameterBuilder();
        parameterBuilder.name(key)
                .description("认证token")
                .modelRef(new ModelRef("string"))
                .parameterType("header")
                .required(tokenSwitch)
                .defaultValue(defaultValue);

        parameters.add(parameterBuilder.build());

//        parameters.add(new ParameterBuilder()
//                .name("token")
//                .description("认证token")
//                .modelRef(new ModelRef("string"))
//                .parameterType("header")
//                .required(true)
//                .defaultValue("123")
//                .build());

        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .useDefaultResponseMessages(false)
                .globalOperationParameters(parameters)
//                .globalResponseMessage(RequestMethod.GET, responseMessageList)
//                .globalResponseMessage(RequestMethod.POST, responseMessageList)
//                .globalResponseMessage(RequestMethod.PUT, responseMessageList)
//                .globalResponseMessage(RequestMethod.DELETE, responseMessageList)
                .select()
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))                         //这里采用包含注解的方式来确定要显示的接口
                //.apis(RequestHandlerSelectors.basePackage("com.youedata.edu.modular.system.controller"))    //这里采用包扫描的方式来确定要显示的接口
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("Guns Doc")
                .description("Guns Api文档")
                .termsOfServiceUrl("http://git.oschina.net/naan1993/guns")
                .contact("Monkey")
                .version("2.0")
                .build();
    }

}
