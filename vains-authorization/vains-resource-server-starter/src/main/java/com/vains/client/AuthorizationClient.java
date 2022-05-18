package com.vains.client;

import com.vains.constant.ApplicationNameConstants;
import com.vains.model.security.IntrospectResult;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 远程调用认证接口
 *
 * @author vains
 */
@FeignClient(ApplicationNameConstants.AUTHORIZATION_SERVER_NAME)
public interface AuthorizationClient {

    /**
     * 调用授权服务的令牌自省端点
     * @param token Jwt 令牌
     * @param authorization Basic认证
     * @return 返回jwt的信息
     */
    @PostMapping("/oauth2/introspect")
    IntrospectResult introspect(@RequestParam("token") String token, @RequestHeader(HttpHeaders.AUTHORIZATION) String authorization);

}
