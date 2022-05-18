package com.vains.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 获取应用名称
 *
 * @author vains
 */
@Data
@Component
@ConfigurationProperties(prefix = ApplicationNameProperties.PREFIX)
public class ApplicationNameProperties {

    static final String PREFIX = "spring.application";

    /**
     * 应用名称
     */
    private String name;

}