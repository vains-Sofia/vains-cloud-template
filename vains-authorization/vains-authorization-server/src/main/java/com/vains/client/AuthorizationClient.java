package com.vains.client;

import java.util.Map;

import com.vains.constant.ApplicationNameConstants;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;

/**
 * 请求授权服务
 * @author vains
 */
@FeignClient(ApplicationNameConstants.AUTHORIZATION_SERVER_NAME)
public interface AuthorizationClient {

    /**
     * 通过客户端模式请求token
     * @param authorization 客户端账号密码请求头
     * @return 返回token相关
     */
    @PostMapping({"/oauth2/token?grant_type=client_credentials"})
    Map<String, String> grantClientToken(@RequestHeader(HttpHeaders.AUTHORIZATION) String authorization);

}
