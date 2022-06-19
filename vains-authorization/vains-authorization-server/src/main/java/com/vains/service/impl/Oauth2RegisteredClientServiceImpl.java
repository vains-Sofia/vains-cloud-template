package com.vains.service.impl;

import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.vains.entity.Oauth2RegisteredClient;
import com.vains.mapper.Oauth2RegisteredClientMapper;
import com.vains.model.request.RegisterClientRequest;
import com.vains.service.IOauth2RegisteredClientService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vains.util.ClientUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.Primary;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClient;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClientRepository;
import org.springframework.stereotype.Service;

import java.time.ZoneOffset;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author vains
 * @since 2022-06-12
 */
@Service
@Primary
@RequiredArgsConstructor
public class Oauth2RegisteredClientServiceImpl extends ServiceImpl<Oauth2RegisteredClientMapper, Oauth2RegisteredClient> implements IOauth2RegisteredClientService, RegisteredClientRepository {

    private final PasswordEncoder passwordEncoder;

    @Override
    public void save(RegisteredClient registeredClient) {
        Oauth2RegisteredClient client = new Oauth2RegisteredClient();
        BeanUtils.copyProperties(registeredClient, client);
        this.save(client);
    }

    @Override
    public RegisteredClient findById(String id) {
        // 根据主键查询
        Oauth2RegisteredClient client = this.getById(id);
        if (client == null) {
            return null;
        }
        // 返回
        return buildClient(client);
    }

    @Override
    public RegisteredClient findByClientId(String clientId) {
        // 根据客户端Id查询
        Oauth2RegisteredClient client = this.getOne(Wrappers.lambdaQuery(Oauth2RegisteredClient.class).eq(Oauth2RegisteredClient::getClientId, clientId));
        if (client == null) {
            return null;
        }
        // 返回
        return buildClient(client);
    }

    @Override
    public void register(RegisterClientRequest clientRequest) {
        // 构建参数
        RegisteredClient registeredClient = RegisteredClient.withId(String.valueOf(IdWorker.getId()))
                // 转换GrantTypes
                .authorizationGrantTypes(authenticationGrantTypes -> authenticationGrantTypes.addAll(
                        clientRequest.getAuthorizationGrantTypes()
                                .stream().map(
                                        ClientUtils::resolveAuthorizationGrantType
                                ).collect(Collectors.toSet())
                ))
                // 转换认证方式
                .clientAuthenticationMethods(authenticationMethods -> authenticationMethods.addAll(
                        clientRequest.getClientAuthenticationMethods()
                                .stream().map(
                                        ClientUtils::resolveClientAuthenticationMethod
                                ).collect(Collectors.toSet())
                ))
                // 客户端Id
                .clientId(clientRequest.getClientId())
                // 客户端名称
                .clientName(clientRequest.getClientName())
                // 客户端秘钥
                .clientSecret(passwordEncoder.encode(clientRequest.getClientSecret()))
                // 通过客户端授权Token的配置
                .tokenSettings(ClientUtils.resolveTokenSettings(clientRequest.getTokenSettings()))
                // 客户端设置
                .clientSettings(ClientUtils.resolveClientSettings(clientRequest.getClientSettings()))
                // 客户端拥有的授权范围
                .scopes(scopes -> scopes.addAll(clientRequest.getScopes()))
                // 客户端回调地址
                .redirectUris(uris -> uris.addAll(clientRequest.getRedirectUris()))
                .build();
        this.save(registeredClient);
    }

    /**
     * 构建RegisteredClient
     * @param client 数据库对应的Entity
     * @return RegisteredClient
     */
    private RegisteredClient buildClient(Oauth2RegisteredClient client) {
        return RegisteredClient.withId(client.getId())
                // 转换GrantTypes
                .authorizationGrantTypes(authenticationGrantTypes -> authenticationGrantTypes.addAll(
                        client.getAuthorizationGrantTypes()
                ))
                // 转换认证方式
                .clientAuthenticationMethods(authenticationMethods -> authenticationMethods.addAll(
                        client.getClientAuthenticationMethods()
                ))
                // 客户端Id
                .clientId(client.getClientId())
                // 客户端名称
                .clientName(client.getClientName())
                // 客户端秘钥
                .clientSecret(client.getClientSecret())
                // 通过客户端授权Token的配置
                .tokenSettings(client.getTokenSettings())
                // 客户端设置
                .clientSettings(client.getClientSettings())
                // 客户端拥有的授权范围
                .scopes(scopes -> scopes.addAll(client.getScopes()))
                // 客户端回调地址
                .redirectUris(uris -> uris.addAll(client.getRedirectUris()))
                // 客户端Id签发时间
                .clientIdIssuedAt(client.getClientIdIssuedAt().toInstant(ZoneOffset.UTC))
                .build();
    }

}
