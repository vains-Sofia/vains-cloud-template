package com.vains.config;

import com.vains.properties.WhiteListProperties;
import com.vains.util.JsonUtils;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.entity.ContentType;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingClass;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.security.oauth2.server.resource.BearerTokenError;
import org.springframework.security.web.server.SecurityWebFilterChain;
import org.springframework.util.StringUtils;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import javax.servlet.Filter;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 资源服务器配置
 *
 * @author vains
 */
@Slf4j
@AllArgsConstructor
@EnableWebFluxSecurity
@ConditionalOnMissingClass({"javax.servlet.Filter"})
@EnableGlobalMethodSecurity(prePostEnabled = true, jsr250Enabled = true, securedEnabled = true)
public class WebfluxResourceServerConfig {

    private final WhiteListProperties whiteListProperties;

    /**
     * 密码加密
     *
     * @return PasswordEncoder
     */
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    SecurityWebFilterChain securityFilterChain(ServerHttpSecurity http) {
        http.authorizeExchange().pathMatchers("/code/**").permitAll();
        http.authorizeExchange().pathMatchers("/actuator/**").permitAll();
        http.authorizeExchange().pathMatchers(whiteListProperties.getUris()).permitAll();
        http.authorizeExchange().pathMatchers(HttpMethod.OPTIONS, "/**").permitAll();
        http.authorizeExchange(authorizeRequests ->
                authorizeRequests.anyExchange().authenticated()
        ).oauth2Login();
        http.csrf().disable();
        http.headers().frameOptions().disable();
        http.oauth2ResourceServer().jwt().and()
                .authenticationEntryPoint(WebfluxResourceServerConfig::authenticationEntryPoint);
        return http.build();
    }

    /**
     * 无效token回调
     * @param exchange 请求响应exchange对象
     * @param e 具体的问题
     * @return Mono
     */
    private static Mono<Void> authenticationEntryPoint(ServerWebExchange exchange, AuthenticationException e) {
        HttpStatus status = getStatus(e);
        Map<String, String> parameters = createParameters(e);
        ServerHttpResponse response = exchange.getResponse();
        String wwwAuthenticateHeaderValue = computeWwwAuthenticateHeaderValue(parameters);
        response.getHeaders().set(HttpHeaders.WWW_AUTHENTICATE, wwwAuthenticateHeaderValue);
        parameters.put("message", e.getMessage());
        String wwwAuthenticate = JsonUtils.objectCovertToJson(parameters);
        response.getHeaders().set(HttpHeaders.CONTENT_TYPE, ContentType.APPLICATION_JSON.toString());
        response.setStatusCode(status);
        DataBuffer buffer = response.bufferFactory().wrap(wwwAuthenticate.getBytes(StandardCharsets.UTF_8));
        return response.writeAndFlushWith(Flux.just(Mono.just(buffer)));
    }

    /**
     * 构建请求头
     * @param parameters 参数
     * @return 返回请求头字符串
     */
    private static String computeWwwAuthenticateHeaderValue(Map<String, String> parameters) {
        StringBuilder wwwAuthenticate = new StringBuilder();
        wwwAuthenticate.append("Bearer");
        if (!parameters.isEmpty()) {
            wwwAuthenticate.append(" ");
            int i = 0;
            for (Map.Entry<String, String> entry : parameters.entrySet()) {
                wwwAuthenticate.append(entry.getKey()).append("=\"").append(entry.getValue()).append("\"");
                if (i != parameters.size() - 1) {
                    wwwAuthenticate.append(", ");
                }
                i++;
            }
        }
        return wwwAuthenticate.toString();
    }

    /**
     * 获取http状态码
     * @param authException 请求响应exchange对象
     * @return 返回状态码对象
     */
    private static HttpStatus getStatus(AuthenticationException authException) {
        if (authException instanceof OAuth2AuthenticationException) {
            OAuth2Error error = ((OAuth2AuthenticationException) authException).getError();
            if (error instanceof BearerTokenError) {
                return ((BearerTokenError) error).getHttpStatus();
            }
        }
        return HttpStatus.UNAUTHORIZED;
    }

    /**
     * 获取错误信息并重新封装
     * @param authException 具体的异常
     * @return 现有的错误信息
     */
    private static Map<String, String> createParameters(AuthenticationException authException) {
        Map<String, String> parameters = new LinkedHashMap<>();
        if (authException instanceof OAuth2AuthenticationException) {
            OAuth2Error error = ((OAuth2AuthenticationException) authException).getError();
            parameters.put("error", error.getErrorCode());
            if (StringUtils.hasText(error.getDescription())) {
                parameters.put("error_description", error.getDescription());
            }
            if (StringUtils.hasText(error.getUri())) {
                parameters.put("error_uri", error.getUri());
            }
            if (error instanceof BearerTokenError) {
                BearerTokenError bearerTokenError = (BearerTokenError) error;
                if (StringUtils.hasText(bearerTokenError.getScope())) {
                    parameters.put("scope", bearerTokenError.getScope());
                }
            }
        }
        return parameters;
    }

}
