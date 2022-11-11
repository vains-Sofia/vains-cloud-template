package com.vains.config;

import com.vains.properties.WhiteListProperties;
import com.vains.security.federated.FederatedIdentityConfigurer;
import com.vains.security.federated.UserRepositoryOAuth2UserHandler;
import com.vains.util.SecurityUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.thymeleaf.context.WebEngineContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 资源服务器配置
 *
 * @author vains
 */
@Slf4j
@EnableWebSecurity
@RequiredArgsConstructor
@EnableGlobalMethodSecurity(prePostEnabled = true, jsr250Enabled = true, securedEnabled = true)
public class ResourceServerConfig {

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
        FederatedIdentityConfigurer federatedIdentityConfigurer = new FederatedIdentityConfigurer()
            .oauth2UserHandler(new UserRepositoryOAuth2UserHandler());
        http.cors().and().csrf().disable();
        http.headers().frameOptions().disable();
        http.authorizeRequests(authorizeRequests ->
            authorizeRequests.mvcMatchers("/actuator/**", "/login", "/oauth2/authenticationError").permitAll()
                .antMatchers("/css/**", "/image/**").permitAll()
                .antMatchers(whiteListProperties.getUris()).permitAll()
                .antMatchers(HttpMethod.OPTIONS, "/**").permitAll()
                .anyRequest().authenticated()
        ).formLogin();
        http.oauth2ResourceServer().jwt()
            .and().accessDeniedHandler(SecurityUtils::exceptionHandler).authenticationEntryPoint(SecurityUtils::exceptionHandler);
        http.apply(federatedIdentityConfigurer);
        return http.build();
    }

}
