需要开启配置中心则
1.bootstrap.yml开启注释
2.pom.xml中打开注释即可
        <!--配置中心所需依赖-->
        <!-- https://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-starter-config -->
        <dependency>
            <groupId>org.springframework.cloud</groupId>
            <artifactId>spring-cloud-starter-config</artifactId>
            <version>1.4.6.RELEASE</version>
        </dependency>
3.可以注释掉main方法的
@PropertySource(value = {"file:d:/data/test/mysql.properties"})