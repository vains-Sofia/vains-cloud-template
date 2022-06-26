package com.vains.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.vains.entity.Oauth2RegisteredClient;
import com.vains.model.Result;
import com.vains.model.request.RegisterClientRequest;
import com.vains.service.IOauth2RegisteredClientService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClientRepository;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

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
    public Result<Oauth2RegisteredClient> findById(@PathVariable String id) {
        Oauth2RegisteredClient registeredClient = oauth2RegisteredClientService.getById(id);
        if (registeredClient == null) {
            return Result.error("客户端不存在！");
        }
        return Result.success(registeredClient);
    }

    @ApiOperation("根据客户端Id获取客户端")
    @GetMapping("/findByClientId/{clientId}")
    public Result<Oauth2RegisteredClient> findByClientId(@PathVariable String clientId) {
        LambdaQueryWrapper<Oauth2RegisteredClient> wrapper = Wrappers.lambdaQuery(Oauth2RegisteredClient.class).eq(Oauth2RegisteredClient::getClientId, clientId);
        Oauth2RegisteredClient registeredClient = oauth2RegisteredClientService.getOne(wrapper);
        if (registeredClient == null) {
            return Result.error("客户端不存在！");
        }
        return Result.success(registeredClient);
    }

}
