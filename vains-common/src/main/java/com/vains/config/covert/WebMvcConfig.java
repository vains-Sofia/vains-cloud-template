package com.vains.config.covert;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.Filter;

/**
 * 注册枚举转换类
 *
 * @author vains
 */
@Configuration
@RequiredArgsConstructor
@ConditionalOnClass({Filter.class})
public class WebMvcConfig implements WebMvcConfigurer {

    private final EnumCovertFactory<?, ?> enumCovertFactory;

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverterFactory(enumCovertFactory);
    }
}