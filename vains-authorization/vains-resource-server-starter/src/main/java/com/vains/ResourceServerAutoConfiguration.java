package com.vains;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

/**
 * 资源服务自动配置
 *
 * @author vains
 */
@EnableFeignClients
@EnableAutoConfiguration
@ComponentScan({"com.vains"})
public class ResourceServerAutoConfiguration {

}
