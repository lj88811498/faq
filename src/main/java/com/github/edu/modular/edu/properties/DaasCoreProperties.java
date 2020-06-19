package com.github.edu.modular.edu.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix = "daas-core")
public class DaasCoreProperties {
    private String storeServerIp;
    private int storeServerPort;
    private String queryEngineIp;
    private int queryEnginePort;

    public String getStoreServerIp() {
        return storeServerIp;
    }

    public void setStoreServerIp(String storeServerIp) {
        this.storeServerIp = storeServerIp;
    }

    public int getStoreServerPort() {
        return storeServerPort;
    }

    public void setStoreServerPort(int storeServerPort) {
        this.storeServerPort = storeServerPort;
    }

    public String getQueryEngineIp() {
        return queryEngineIp;
    }

    public void setQueryEngineIp(String queryEngineIp) {
        this.queryEngineIp = queryEngineIp;
    }

    public int getQueryEnginePort() {
        return queryEnginePort;
    }

    public void setQueryEnginePort(int queryEnginePort) {
        this.queryEnginePort = queryEnginePort;
    }
}
