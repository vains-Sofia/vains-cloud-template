package com.vains.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.vains.entity.Oauth2RegisteredClient;
import com.vains.model.Result;
import com.vains.model.request.FindClientListRequest;
import com.vains.model.request.RegisterClientRequest;
import com.vains.model.request.UpdateClientRequest;
import com.vains.model.request.UpdateClientScopesRequest;
import com.vains.model.response.FindClientResponse;
import com.vains.service.IOauth2RegisteredClientService;
import com.vains.util.SecurityUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.util.ObjectUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
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

    private final IOauth2RegisteredClientService oauth2RegisteredClientService;

    @ApiOperation("注册客户端")
    @PostMapping("/register")
    public Result<String> register(@Validated @RequestBody RegisterClientRequest clientRequest) {
        oauth2RegisteredClientService.register(clientRequest);
        return Result.success();
    }

    @ApiOperation("更新客户端")
    @PutMapping("/updateClient")
    public Result<String> updateClient(@Validated @RequestBody UpdateClientRequest updateClient) {
        oauth2RegisteredClientService.updateClient(updateClient);
        return Result.success();
    }

    @GetMapping("/findById/{id}")
    @ApiOperation("根据主键获取客户端")
    public Result<FindClientResponse> findById(@PathVariable String id) {
        Oauth2RegisteredClient registeredClient = oauth2RegisteredClientService.getById(id);
        if (registeredClient == null) {
            return Result.error("客户端不存在！");
        }
        FindClientResponse clientResponse = FindClientResponse.covert(registeredClient);
        String decrypt = SecurityUtils.aesDecrypt(registeredClient.getCopySecret(), registeredClient.getClientId());
        clientResponse.setClientSecret(decrypt);
        return Result.success(clientResponse);
    }

    @ApiOperation("根据客户端Id获取客户端")
    @GetMapping("/findByClientId/{clientId}")
    public Result<FindClientResponse> findByClientId(@PathVariable String clientId) {
        LambdaQueryWrapper<Oauth2RegisteredClient> wrapper = Wrappers.lambdaQuery(Oauth2RegisteredClient.class).eq(Oauth2RegisteredClient::getClientId, clientId);
        Oauth2RegisteredClient registeredClient = oauth2RegisteredClientService.getOne(wrapper);
        if (registeredClient == null) {
            return Result.error("客户端不存在！");
        }
        FindClientResponse clientResponse = FindClientResponse.covert(registeredClient);
        String decrypt = SecurityUtils.aesDecrypt(registeredClient.getCopySecret(), registeredClient.getClientId());
        clientResponse.setClientSecret(decrypt);
        return Result.success(FindClientResponse.covert(registeredClient));
    }

    @ApiOperation("获取客户端列表")
    @GetMapping("/findClientList")
    public Result<IPage<FindClientResponse>> findClientList(@Validated FindClientListRequest findClient) {
        LambdaQueryWrapper<Oauth2RegisteredClient> wrapper = Wrappers.lambdaQuery(Oauth2RegisteredClient.class)
                .like(!ObjectUtils.isEmpty(findClient.getClientId()), Oauth2RegisteredClient::getClientId, findClient.getClientId())
                .like(!ObjectUtils.isEmpty(findClient.getClientName()), Oauth2RegisteredClient::getClientName, findClient.getClientName());
        IPage<Oauth2RegisteredClient> iPage = new Page<>(findClient.getCurrent(), findClient.getSize());
        oauth2RegisteredClientService.page(iPage, wrapper);
        IPage<FindClientResponse> page = new Page<>(iPage.getCurrent(), iPage.getSize());
        List<FindClientResponse> findClientResponses = iPage.getRecords().stream().peek(client -> {
            String decrypt = SecurityUtils.aesDecrypt(client.getCopySecret(), client.getClientId());
            client.setClientSecret(decrypt);
        }).map(FindClientResponse::covert).collect(Collectors.toList());
        page.setRecords(findClientResponses);
        return Result.success(page);
    }

    @ApiOperation("更改客户端Scopes")
    @PutMapping("/updateClientScopes")
    public Result<String> updateClientScopes(@Validated @RequestBody UpdateClientScopesRequest updateClientScopes) {
        Oauth2RegisteredClient client = new Oauth2RegisteredClient();
        client.setId(updateClientScopes.getId());
        client.setScopes(updateClientScopes.getScopes());
        oauth2RegisteredClientService.updateById(client);
        return Result.success();
    }

}
