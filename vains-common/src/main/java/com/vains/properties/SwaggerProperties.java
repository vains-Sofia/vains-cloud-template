package com.vains.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 自定义swagger3属性
 *
 * @author vains
 * @date 2021/4/5 2:36
 */
@Data
@Component
@ConfigurationProperties(prefix = SwaggerProperties.PREFIX)
public class SwaggerProperties {

    static final String PREFIX = "swagger";

    /**
     * 是否开启swagger，生产环境一般关闭，所以这里定义一个变量
     */
    private Boolean enable;

    /**
     * 项目应用名
     */
    private String applicationName;

    /**
     * 项目版本信息
     */
    private String applicationVersion;

    /**
     * 项目描述信息
     */
    private String applicationDescription;

    /**
     * 接口调试地址
     */
    private String tryHost;

    /**
     * Oauth2认证配置
     */
    private Oauth2 oauth2;

    /**
     * Oauth2认证配置
     * @author vains
     */
    @Data
    public static class Oauth2 {

        /**
         * 认证地址
         */
        private String authorizeUri;

        /**
         * token地址
         */
        private String accessTokenUri;

    }

}