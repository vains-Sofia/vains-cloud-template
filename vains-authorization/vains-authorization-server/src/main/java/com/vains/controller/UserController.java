package com.vains.controller;

import com.vains.constant.JwtClaimsConstants;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.Collections;
import java.util.Map;

/**
 * 用户
 *
 * @author vains
 */
@RestController
@Api(tags = "用户接口")
public class UserController {

    @GetMapping("/user")
    @ApiOperation("当前用户的信息")
    public Map<String, Object> user(Principal principal) {
        if (!(principal instanceof JwtAuthenticationToken)) {
            return Collections.emptyMap();
        }
        JwtAuthenticationToken token = (JwtAuthenticationToken) principal;
        return token.getToken().getClaims();
    }

}
