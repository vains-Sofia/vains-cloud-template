package com.vains.config;

import com.fasterxml.jackson.databind.SerializationFeature;
import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.jwk.RSAKey;
import com.nimbusds.jose.jwk.source.JWKSource;
import com.nimbusds.jose.proc.SecurityContext;
import com.vains.constant.Constants;
import com.vains.security.federated.FederatedIdentityConfigurer;
import com.vains.security.federated.FederatedIdentityIdTokenCustomizer;
import com.vains.security.password.OAuth2ResourceOwnerPasswordAuthenticationConverter;
import com.vains.security.password.Oauth2ResourceOwnerPasswordAuthenticationProvider;
import lombok.AllArgsConstructor;
import org.springframework.boot.autoconfigure.security.oauth2.resource.OAuth2ResourceServerProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.lob.DefaultLobHandler;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.OAuth2AuthorizationServerConfiguration;
import org.springframework.security.config.annotation.web.configurers.oauth2.server.authorization.OAuth2AuthorizationServerConfigurer;
import org.springframework.security.jackson2.CoreJackson2Module;
import org.springframework.security.oauth2.jwt.JwtDecoder;
import org.springframework.security.oauth2.jwt.JwtEncoder;
import org.springframework.security.oauth2.server.authorization.JdbcOAuth2AuthorizationConsentService;
import org.springframework.security.oauth2.server.authorization.JdbcOAuth2AuthorizationService;
import org.springframework.security.oauth2.server.authorization.OAuth2AuthorizationConsentService;
import org.springframework.security.oauth2.server.authorization.OAuth2AuthorizationService;
import org.springframework.security.oauth2.server.authorization.client.JdbcRegisteredClientRepository;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClientRepository;
import org.springframework.security.oauth2.server.authorization.config.ProviderSettings;
import org.springframework.security.oauth2.server.authorization.token.JwtEncodingContext;
import org.springframework.security.oauth2.server.authorization.token.OAuth2TokenCustomizer;
import org.springframework.security.oauth2.server.authorization.web.authentication.DelegatingAuthenticationConverter;
import org.springframework.security.oauth2.server.authorization.web.authentication.OAuth2AuthorizationCodeAuthenticationConverter;
import org.springframework.security.oauth2.server.authorization.web.authentication.OAuth2ClientCredentialsAuthenticationConverter;
import org.springframework.security.oauth2.server.authorization.web.authentication.OAuth2RefreshTokenAuthenticationConverter;
import org.springframework.security.rsa.crypto.KeyStoreKeyFactory;
import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.RequestMatcher;
import org.springframework.web.filter.CorsFilter;

import java.security.KeyPair;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.Arrays;
import java.util.UUID;

/**
 * 授权服务配置类
 *
 * @author vains
 */
@EnableWebSecurity
@AllArgsConstructor
public class AuthorizationServerConfig {

    private final CorsFilter corsFilter;

    private final JdbcTemplate jdbcTemplate;

    /**
     * 自定义授权页
     */
    private static final String CUSTOM_CONSENT_PAGE_URI = "/oauth2/consent";

    private final OAuth2ResourceServerProperties oAuth2ResourceServerProperties;

    @Bean
    @Order(Ordered.HIGHEST_PRECEDENCE)
    public SecurityFilterChain authorizationServerSecurityFilterChain(HttpSecurity http) throws Exception {
        // 用于 OAuth 2.0 授权服务器支持的AbstractHttpConfigurer 。
        OAuth2AuthorizationServerConfigurer<HttpSecurity> authorizationServerConfigurer = new OAuth2AuthorizationServerConfigurer<>();

        http.apply(authorizationServerConfigurer.tokenEndpoint((tokenEndpoint) -> tokenEndpoint.accessTokenRequestConverter(
                new DelegatingAuthenticationConverter(Arrays.asList(
                        new OAuth2AuthorizationCodeAuthenticationConverter(),
                        new OAuth2RefreshTokenAuthenticationConverter(),
                        new OAuth2ClientCredentialsAuthenticationConverter(),
                        new OAuth2ResourceOwnerPasswordAuthenticationConverter()))
        )));

        // 自定义授权同意页面
        authorizationServerConfigurer
                .authorizationEndpoint(authorizationEndpoint ->
                        authorizationEndpoint.consentPage(CUSTOM_CONSENT_PAGE_URI));

        RequestMatcher endpointsMatcher = authorizationServerConfigurer.getEndpointsMatcher();

        http.headers().frameOptions().disable();
        http
                .requestMatcher(endpointsMatcher)
                .authorizeRequests(authorizeRequests ->
                        authorizeRequests.anyRequest().authenticated()
                )
                .csrf(csrf -> csrf.ignoringRequestMatchers(endpointsMatcher))
                .apply(authorizationServerConfigurer);

        // 添加允许跨域拦截器
        http.addFilter(corsFilter);
        http.apply(new FederatedIdentityConfigurer());
        DefaultSecurityFilterChain securityFilterChain = http.formLogin(Customizer.withDefaults()).build();
        //  Custom configuration for Resource Owner Password grant type.
        //  Current implementation has no support for Resource Owner：Password grant type
        addCustomOauth2ResourceOwnerPasswordAuthenticationProvider(http);
        return securityFilterChain;
    }

    /**
     * 
     * 客户端信息，基于数据库保存的
     * @return OAuth 2.0 RegisteredClient存储库
     */
    @Bean
    public RegisteredClientRepository registeredClientRepository() {
        return new JdbcRegisteredClientRepository(jdbcTemplate);
    }

    /**
     * jwt 解码
     */
    @Bean
    public JwtDecoder jwtDecoder(JWKSource<SecurityContext> jwkSource) {
        return OAuth2AuthorizationServerConfiguration.jwtDecoder(jwkSource);
    }

    /**
     * 使用JdbcOperations进行OAuth2Authorization持久化。
     * @param jdbcTemplate 持久化依赖对象
     * @param registeredClientRepository 客户端Repository
     * @return OAuth2AuthorizationService JDBC 实现
     */
    @Bean
    public OAuth2AuthorizationService authorizationService(JdbcTemplate jdbcTemplate, RegisteredClientRepository registeredClientRepository) {
        JdbcOAuth2AuthorizationService authorizationService = new JdbcOAuth2AuthorizationService(jdbcTemplate, registeredClientRepository);

        class CustomOauth2AuthorizationRowMapper extends JdbcOAuth2AuthorizationService.OAuth2AuthorizationRowMapper {
            public CustomOauth2AuthorizationRowMapper(RegisteredClientRepository registeredClientRepository) {
                super(registeredClientRepository);
                // 注册Security默认模块，防止反序列化时失败
                getObjectMapper().registerModule(new CoreJackson2Module());
                getObjectMapper().configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
                getObjectMapper().configure(SerializationFeature.FAIL_ON_SELF_REFERENCES, false);
                this.setLobHandler(new DefaultLobHandler());
            }
        }

        CustomOauth2AuthorizationRowMapper oAuth2AuthorizationRowMapper =
                new CustomOauth2AuthorizationRowMapper(registeredClientRepository);

        authorizationService.setAuthorizationRowMapper(oAuth2AuthorizationRowMapper);
        return authorizationService;
    }

    /**
     * 对jwt进行签名，设置秘钥
     * @return 既然涉及到签名，就涉及到签名算法，对称加密还是非对称加密，那么就需要加密的 密钥或者公私钥对。此处我们将 JWT的密钥或者公私钥对统一称为 JSON WEB KEY，即 JWK。
     */
    @Bean
    public JWKSource<SecurityContext> jwkSource() {
        RSAKey rsaKey = generateRsa();
        JWKSet jwkSet = new JWKSet(rsaKey);
        return (jwkSelector, securityContext) -> jwkSelector.select(jwkSet);
    }

    @Bean
    public KeyPair keyPair() {
        //文件名
        ClassPathResource ksFile = new ClassPathResource("keypair/vains.jks");
        //第二个参数就是生成时候的密码
        KeyStoreKeyFactory ksFactory = new KeyStoreKeyFactory(ksFile, Constants.DEFAULT_PASSWORD.toCharArray());
        return ksFactory.getKeyPair("vains.jks");
    }

    /**
     * Jwk配置
     * @return RSAKey
     */
    public RSAKey generateRsa() {
        RSAPublicKey publicKey = (RSAPublicKey) keyPair().getPublic();
        RSAPrivateKey privateKey = (RSAPrivateKey) keyPair().getPrivate();
        return new RSAKey.Builder(publicKey)
                .privateKey(privateKey)
                .keyID(UUID.randomUUID().toString())
                .build();
    }

    @Bean
    public ProviderSettings providerSettings() {
        return ProviderSettings.builder()
                // 配置获取token的端点路径
                .tokenEndpoint("/oauth2/token")
                // 设置发布者的url地址，一般是项目根路径
                // 授权服务器也是一个资源服务器，这里就直接拿来用了
                .issuer(oAuth2ResourceServerProperties.getJwt().getIssuerUri()).build();
    }

    @Bean
    public OAuth2AuthorizationConsentService authorizationConsentService() {
        // Will be used by the ConsentController
        return new JdbcOAuth2AuthorizationConsentService(jdbcTemplate, registeredClientRepository());
    }

    /**
     * 添加密码模式登陆
     * @param http HttpSecurity
     */
    private void addCustomOauth2ResourceOwnerPasswordAuthenticationProvider(HttpSecurity http) {
        AuthenticationManager authenticationManager = http.getSharedObject(AuthenticationManager.class);
        ProviderSettings providerSettings = http.getSharedObject(ProviderSettings.class);
        OAuth2AuthorizationService authorizationService = http.getSharedObject(OAuth2AuthorizationService.class);
        JwtEncoder jwtEncoder = http.getSharedObject(JwtEncoder.class);
        OAuth2TokenCustomizer<JwtEncodingContext> jwtCustomizer = idTokenCustomizer();

        Oauth2ResourceOwnerPasswordAuthenticationProvider resourceOwnerPasswordAuthenticationProvider =
                new Oauth2ResourceOwnerPasswordAuthenticationProvider(authenticationManager, authorizationService, jwtEncoder);
        if (jwtCustomizer != null) {
            resourceOwnerPasswordAuthenticationProvider.setJwtCustomizer(jwtCustomizer);
        }

        resourceOwnerPasswordAuthenticationProvider.setProviderSettings(providerSettings);

        // This will add new authentication provider in the list of existing authentication providers.
        http.authenticationProvider(resourceOwnerPasswordAuthenticationProvider);

    }

    @Bean("idTokenCustomizer")
    public OAuth2TokenCustomizer<JwtEncodingContext> idTokenCustomizer() {
        return new FederatedIdentityIdTokenCustomizer();
    }

}
