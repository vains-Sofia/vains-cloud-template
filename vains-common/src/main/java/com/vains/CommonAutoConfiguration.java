package com.vains;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

/**
 * 公共模块自动配置
 *
 * @author vains
 */
@EnableAutoConfiguration
@ComponentScan({"com.vains"})
public class CommonAutoConfiguration {

}
