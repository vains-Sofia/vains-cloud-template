package com.vains.interceptor;
 
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 注入拦截器
 * @author vains
 */
@Configuration
@ConditionalOnClass({WebMvcConfigurer.class})
public class WebConfig implements WebMvcConfigurer{

    /**
     * 认证服务器用到的feign请求需要通过拦截器检查是否通过feign请求的
     */
    private final static String[] PATH_PATTERNS = {"/user/getByUsername/*"};
 
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new NotFeignRequestInterceptor()).addPathPatterns(PATH_PATTERNS);
    }
 
}