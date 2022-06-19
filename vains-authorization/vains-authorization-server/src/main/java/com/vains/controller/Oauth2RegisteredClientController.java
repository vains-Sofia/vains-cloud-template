package com.vains.controller;

import com.vains.model.Result;
import com.vains.model.request.RegisterClientRequest;
import com.vains.service.IOauth2RegisteredClientService;
import com.vains.util.ClientUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.checkerframework.framework.qual.RequiresQualifier;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClient;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClientRepository;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.Collections;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author vains
 * @since 2022-06-12
 */
@RestController
@Api(tags = "客户端接口")
@RequiredArgsConstructor
@RequestMapping("/registeredClient")
public class Oauth2RegisteredClientController {

    private final RegisteredClientRepository registeredClientRepository;

    private final IOauth2RegisteredClientService oauth2RegisteredClientService;

    @ApiOperation("注册客户端")
    @PostMapping("/register")
    public Result<String> register(@Validated @RequestBody RegisterClientRequest clientRequest) {
        oauth2RegisteredClientService.register(clientRequest);
        return Result.success();
    }

    @GetMapping("/findById/{id}")
    @ApiOperation("根据主键获取客户端")
    public Result<RegisteredClient> findById(@PathVariable String id) {
        RegisteredClient registeredClient = registeredClientRepository.findById(id);
        if (registeredClient == null) {
            return Result.error("客户端不存在！");
        }
        return Result.success(registeredClient);
    }

    @ApiOperation("根据客户端Id获取客户端")
    @GetMapping("/findByClientId/{clientId}")
    public Result<RegisteredClient> findByClientId(@PathVariable String clientId) {
        RegisteredClient registeredClient = registeredClientRepository.findByClientId(clientId);
        if (registeredClient == null) {
            return Result.error("客户端不存在！");
        }
        return Result.success(registeredClient);
    }

}
