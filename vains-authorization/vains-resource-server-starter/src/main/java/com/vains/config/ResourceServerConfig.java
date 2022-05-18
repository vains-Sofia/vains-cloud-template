package com.vains.config;

import com.vains.client.AuthorizationClient;
import com.vains.constant.Constants;
import com.vains.constant.JwtClaimsConstants;
import com.vains.model.security.GrantedAuthorityDto;
import com.vains.model.security.IntrospectResult;
import com.vains.properties.WhiteListProperties;
import com.vains.util.SecurityUtils;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.servlet.configuration.WebMvcSecurityConfiguration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.server.authorization.OAuth2AuthorizationService;
import org.springframework.security.oauth2.server.resource.InvalidBearerTokenException;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.security.web.SecurityFilterChain;

import javax.servlet.Filter;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 资源服务器配置
 *
 * @author vains
 */
@Slf4j
@EnableWebSecurity
@AllArgsConstructor
@ConditionalOnClass(Filter.class)
@EnableGlobalMethodSecurity(prePostEnabled = true, jsr250Enabled = true, securedEnabled = true)
public class ResourceServerConfig {

    private final AuthorizationClient authorizationClient;

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
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.headers().frameOptions().disable();
        http.authorizeRequests().antMatchers(whiteListProperties.getUris()).permitAll();
        http.authorizeRequests().antMatchers(HttpMethod.OPTIONS, "/**").permitAll();
        http.authorizeRequests(authorizeRequests ->
                        authorizeRequests.anyRequest().authenticated()
                );
        http.oauth2ResourceServer().jwt()
                .jwtAuthenticationConverter(source -> {
                    String basicHeader = "Basic " + HttpHeaders.encodeBasicAuth(source.getClaimAsStringList(JwtClaimsConstants.AUD).get(0), Constants.DEFAULT_PASSWORD, StandardCharsets.UTF_8);
                    IntrospectResult introspectResult = authorizationClient.introspect(source.getTokenValue(), basicHeader);
                    if (introspectResult.getActive() == null || ! introspectResult.getActive()) {
                        throw new InvalidBearerTokenException("Jwt has been revoked!");
                    }
                    // 获取客户端范围
                    List<String> clientScopes = source.getClaimAsStringList(JwtClaimsConstants.SCOPE);
                    // 获取用户权限
                    List<String> authorities = Optional.ofNullable(source.getClaimAsStringList(JwtClaimsConstants.AUTHORITIES)).orElse(Collections.emptyList());
                    authorities.addAll(clientScopes);
                    Set<GrantedAuthorityDto> collect = authorities.stream().map(GrantedAuthorityDto::new).collect(Collectors.toSet());
                    // 获取昵称
                    String nickname = source.getClaimAsString(JwtClaimsConstants.USER_NICKNAME);
                    return new JwtAuthenticationToken(source, collect, nickname);
                })
                .and().accessDeniedHandler(SecurityUtils::exceptionHandler).authenticationEntryPoint(SecurityUtils::exceptionHandler);
        return http.build();
    }

}