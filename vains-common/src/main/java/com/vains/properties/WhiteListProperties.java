package com.vains.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 白名单列表
 *
 * @author vains
 */
@Data
@Component
@ConfigurationProperties(prefix = WhiteListProperties.PREFIX)
public class WhiteListProperties {

    static final String PREFIX = "vains.white-list";

    /**
     * 白名单列表
     */
    private String[] uris;

}
