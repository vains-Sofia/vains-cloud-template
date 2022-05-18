package com.vains.config;

import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.boot.autoconfigure.web.servlet.ConditionalOnMissingFilterBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import javax.servlet.Filter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * 注入一些通用配置类
 *
 * @author vains
 */
@Configuration
@ConditionalOnClass({Filter.class})
public class BeanConfig {

    /**
     * 设置允许跨域的源
     */
    private static final String[] ORIGINS = new String[]{
            "127.0.0.1:5100",
            "localhost:5100",
            "k7fsqkhtbx.cdhttp.cn"
    };

    private static final String PATTERN = "yyyy-MM-dd HH:mm:ss";

    /**
     * LocalDatetime序列化
     * @return LocalDateTimeSerializer
     */
    @Bean
    public LocalDateTimeSerializer localDateTimeSerializer() {
        return new LocalDateTimeSerializer(DateTimeFormatter.ofPattern(PATTERN));
    }

    /**
     * LocalDatetime反序列化
     * @return LocalDateTimeDeserializer
     */
    @Bean
    public LocalDateTimeDeserializer localDateTimeDeserializer() {
        return new LocalDateTimeDeserializer(DateTimeFormatter.ofPattern(PATTERN));
    }

    @Bean
    public Jackson2ObjectMapperBuilderCustomizer jackson2ObjectMapperBuilderCustomizer() {
        return builder -> {
            builder.serializerByType(LocalDateTime.class, localDateTimeSerializer());
            builder.deserializerByType(LocalDateTime.class,localDateTimeDeserializer());
            builder.simpleDateFormat(PATTERN);
        };
    }

    /**
     * 跨域过滤器
     *
     * @return CorsFilter
     */
    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration corsConfiguration = new CorsConfiguration();
        corsConfiguration.addAllowedHeader("*");
        corsConfiguration.addAllowedMethod("*");
        corsConfiguration.addAllowedOrigin("*");
        this.addAllowedOrigins(corsConfiguration);
        source.registerCorsConfiguration("/**", corsConfiguration);
        return new CorsFilter(source);
    }

    /**
     * 组装允许跨域的源
     * @param corsConfiguration CorsConfiguration
     */
    private void addAllowedOrigins(CorsConfiguration corsConfiguration) {
        for (String origin : ORIGINS) {
            corsConfiguration.addAllowedOrigin("http://" + origin);
            corsConfiguration.addAllowedOrigin("https://" + origin);
        }
    }

}
