package com.vains.controller;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.security.oauth2.client.OAuth2ClientProperties;
import org.springframework.boot.autoconfigure.security.oauth2.resource.OAuth2ResourceServerProperties;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.server.ServerWebExchange;

import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;

/**
 * 登录
 *
 * @author vains
 */
@Slf4j
@Controller
@AllArgsConstructor
public class LoginController {

    private final OAuth2ClientProperties oAuth2ClientProperties;

    private final OAuth2ResourceServerProperties oAuth2ResourceServerProperties;

    @GetMapping("/code/login")
    public String login(ServerWebExchange exchange) {
        String registrationId = "gateway-oidc";
        OAuth2ClientProperties.Provider spring = oAuth2ClientProperties.getProvider().get("spring");
        OAuth2ClientProperties.Registration registration = oAuth2ClientProperties.getRegistration().get(registrationId);
        String url = "%s/oauth2/authorize?client_id=%s&redirect_uri=http://%s&response_type=code&scope=%s&state=state";
        List<String> baseUrls = exchange.getRequest().getHeaders().get(HttpHeaders.HOST);
        String redirectUri = registration.getRedirectUri().replace("{baseUrl}", !ObjectUtils.isEmpty(baseUrls) ? baseUrls.get(0) : "");
        url = String.format(url, spring.getIssuerUri(), registration.getClientId(), redirectUri, String.join(",", registration.getScope()));
        log.info("重定向的地址为：{}", url);
        return "redirect:" + url;
    }

    @ResponseBody
    @SuppressWarnings("unchecked")
    @GetMapping("/code/redirect")
    public Map<String, Object> redirect(ServerWebExchange exchange, String code, String state) {
        log.info("code={},state={}", code, state);
        String registrationId = "gateway-oidc";
        OAuth2ClientProperties.Provider spring = oAuth2ClientProperties.getProvider().get("spring");
        OAuth2ClientProperties.Registration registration = oAuth2ClientProperties.getRegistration().get(registrationId);
        String url = "%s/oauth2/token?code=%s&grant_type=authorization_code&redirect_uri=%s";
        List<String> baseUrls = exchange.getRequest().getHeaders().get(HttpHeaders.HOST);
        String redirectUri = registration.getRedirectUri().replace("{baseUrl}", !ObjectUtils.isEmpty(baseUrls) ? baseUrls.get(0) : "");
        url = String.format(url, spring.getIssuerUri(), code, redirectUri);
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.add(HttpHeaders.AUTHORIZATION, "Basic " + HttpHeaders.encodeBasicAuth(registration.getClientId(), registration.getClientSecret(), StandardCharsets.UTF_8));
        HttpEntity<Map<String, Object>> httpEntity = new HttpEntity<>(null, headers);
        return restTemplate.exchange(url, HttpMethod.POST, httpEntity, Map.class).getBody();
    }

    @GetMapping("/static/**")
    public String index() {
        return "index";
    }

}
