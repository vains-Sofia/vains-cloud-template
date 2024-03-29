package com.vains.config.covert;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.io.File;

/**
 * 注册枚举转换类
 *  仅在Servlet环境生效
 *
 * @author vains
 */
@Configuration
@RequiredArgsConstructor
@ConditionalOnWebApplication(type = ConditionalOnWebApplication.Type.SERVLET)
public class WebMvcConfig implements WebMvcConfigurer {

    private final EnumCovertFactory<?, ?> enumCovertFactory;

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverterFactory(enumCovertFactory);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String defaultPath = System.getProperty("user.dir") + File.separator + "files" + File.separator;
        registry.addResourceHandler("/files/**")
            .addResourceLocations("file:" + defaultPath);
    }

}