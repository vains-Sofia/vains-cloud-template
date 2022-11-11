package com.vains.util;

import lombok.extern.slf4j.Slf4j;
import org.apache.http.entity.ContentType;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.security.oauth2.server.resource.BearerTokenError;
import org.springframework.security.oauth2.server.resource.BearerTokenErrorCodes;
import org.springframework.security.oauth2.server.resource.authentication.AbstractOAuth2TokenAuthenticationToken;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 认证鉴权工具
 *
 * @author vains
 */
@Slf4j
public class SecurityUtils {

    private SecurityUtils() {
        throw new UnsupportedOperationException("Utility classes cannot be instantiated.");
    }

    /**
     * 认证与鉴权失败回调
     *
     * @param request  当前请求
     * @param response 当前响应
     * @param e        具体的异常信息
     */
    public static void exceptionHandler(HttpServletRequest request, HttpServletResponse response, Throwable e) {
        Map<String, String> parameters = getErrorParameter(request, response, e);
        String wwwAuthenticate = computeWwwAuthenticateHeaderValue(parameters);
        response.addHeader(HttpHeaders.WWW_AUTHENTICATE, wwwAuthenticate);
        try {
            response.setContentType(ContentType.APPLICATION_JSON.toString());
            response.getWriter().write(JsonUtils.objectCovertToJson(parameters));
            response.getWriter().flush();
        } catch (IOException ex) {
            log.error("写回错误信息失败", e);
        }
    }

    /**
     * 认证与鉴权失败回调，该方法会重定向至错误页面
     *
     * @param request  当前请求
     * @param response 当前响应
     * @param e        具体的异常信息
     */
    public static void exceptionHandlerForward(HttpServletRequest request, HttpServletResponse response, Throwable e) {
        Map<String, String> parameters = getErrorParameter(request, response, e);
        MultiValueMap<String, String> valueMap = new LinkedMultiValueMap<>(parameters.size());
        parameters.forEach(valueMap::add);
        UriComponents uriComponents = ServletUriComponentsBuilder.fromCurrentRequest()
            .replacePath("/oauth2/authenticationError")
            .replaceQueryParams(valueMap)
            .encode(StandardCharsets.UTF_8)
            .build();
        try {
            request.getRequestDispatcher(uriComponents.getPath() + "?" + uriComponents.getQuery()).forward(request, response);
        } catch (IOException | ServletException ex) {
            log.error("转发到错误提示页面失败", e);
        }
    }

    private static Map<String, String> getErrorParameter(HttpServletRequest request, HttpServletResponse response, Throwable e) {
        Map<String, String> parameters = new LinkedHashMap<>();
        if (request.getUserPrincipal() instanceof AbstractOAuth2TokenAuthenticationToken) {
            parameters.put("error", BearerTokenErrorCodes.INSUFFICIENT_SCOPE);
            parameters.put("error_description",
                "The request requires higher privileges than provided by the access token.");
            parameters.put("error_uri", "https://tools.ietf.org/html/rfc6750#section-3.1");
            response.setStatus(HttpStatus.FORBIDDEN.value());
        }
        if (e instanceof OAuth2AuthenticationException) {
            OAuth2Error error = ((OAuth2AuthenticationException) e).getError();
            parameters.put("error", error.getErrorCode());
            if (StringUtils.hasText(error.getUri())) {
                parameters.put("error_uri", error.getUri());
            }
            if (StringUtils.hasText(error.getDescription())) {
                parameters.put("error_description", error.getDescription());
            }
            if (error instanceof BearerTokenError) {
                BearerTokenError bearerTokenError = (BearerTokenError) error;
                if (StringUtils.hasText(bearerTokenError.getScope())) {
                    parameters.put("scope", bearerTokenError.getScope());
                }
                response.setStatus(((BearerTokenError) error).getHttpStatus().value());
            }
        }
        parameters.put("message", e.getMessage());
        return parameters;
    }

    /**
     * 生成放入请求头的错误信息
     *
     * @param parameters 参数
     * @return 字符串
     */
    public static String computeWwwAuthenticateHeaderValue(Map<String, String> parameters) {
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
     * 获取用户id
     *
     * @return 返回登录用户的id
     */
    public static Integer getUserId() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!authentication.isAuthenticated()) {
            log.warn("用户尚未登录.");
            throw new OAuth2AuthenticationException("用户尚未登录.");
        }
        if (!(authentication instanceof JwtAuthenticationToken)) {
            log.warn("用户登录信息异常.");
            throw new OAuth2AuthenticationException("用户登录信息异常.");
        }
        // 转为JwtAuthenticationToken，可获取具体的信息
        JwtAuthenticationToken token = (JwtAuthenticationToken) authentication;
        // 获取jwt的id，也就是用户id
        return Integer.valueOf(token.getToken().getId());
    }

    /**
     * aes加密
     *
     * @param content 待加密数据
     * @param key     密钥
     * @return 返回加密后的数据，返回 null 代表加密失败
     */
    public static String aesEncrypt(String content, String key) {
        if (key.length() > 16) {
            key = key.substring(0, 16);
        }
        try {
            //指定加密算法
            Cipher cipher = Cipher.getInstance("AES");
            //创建加密规则：指定key和加密类型
            SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes(), "AES");
            //指定加密模式为加密，指定加密规则
            cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec);
            //调用加密方法
            byte[] result = cipher.doFinal(content.getBytes());
            //用Base64编码
            return new String(Base64.getEncoder().encode(result));
        } catch (Exception e) {
            log.warn("加密[{}]失败.原因：{}", content, e.getMessage());
        }
        return null;
    }

    /**
     * aes解密
     *
     * @param content 待解密数据
     * @param key     密钥
     * @return 原数据，返回 null 代表解密失败
     */
    public static String aesDecrypt(String content, String key) {
        if (key.length() > 16) {
            key = key.substring(0, 16);
        }
        try {
            //Base64解码
            byte[] result = Base64.getDecoder().decode(content);
            //指定加密算法
            Cipher cipher = Cipher.getInstance("AES");
            //创建加密规则：指定key和加密类型
            SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes(), "AES");
            //指定加密模式为解密，指定加密规则
            cipher.init(Cipher.DECRYPT_MODE, secretKeySpec);
            return new String(cipher.doFinal(result));
        } catch (Exception e) {
            log.warn("解密[{}]失败.原因：{}", content, e.getMessage());
        }
        return null;
    }

}