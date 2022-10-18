package com.vains.model.response;

import com.vains.entity.Oauth2RegisteredClient;
import com.vains.model.ClientSettingsModel;
import com.vains.model.TokenSettingsModel;
import com.vains.util.ClientUtils;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Data;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;
import org.springframework.util.Assert;

import java.time.LocalDateTime;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 注册客户端入参
 *
 * @author vains
 */
@Data
@Builder
@ApiModel(value = "查询客户端响应", description = "查询客户端响应bean")
public class FindClientResponse {

    @ApiModelProperty("客户端主键Id")
    private String id;

    @ApiModelProperty("客户端Id")
    private String clientId;

    @ApiModelProperty("客户端Id签发时间")
    private LocalDateTime clientIdIssuedAt;

    @ApiModelProperty("客户端秘钥")
    private String clientSecret;

    @ApiModelProperty("客户端名称")
    private String clientName;

    @ApiModelProperty("客户端头像")
    private String clientProfile;

    @ApiModelProperty("客户端认证方式")
    private Set<String> clientAuthenticationMethods;

    @ApiModelProperty("客户端拥有的授权方式")
    private Set<String> authorizationGrantTypes;

    @ApiModelProperty("回调地址")
    private Set<String> redirectUris;

    @ApiModelProperty("授权范围")
    private Set<String> scopes;

    @ApiModelProperty("通过该客户端授权的范围")
    private TokenSettingsModel tokenSettings;

    @ApiModelProperty("客户端设置")
    private ClientSettingsModel clientSettings;

    /**
     * 将框架自带的bean转为自定义bean
     * @param client 客户端
     * @return 返回自定义查询类
     */
    public static FindClientResponse covert(Oauth2RegisteredClient client) {
        Assert.notNull(client, "Oauth2RegisteredClient 不能为空.");
        return FindClientResponse.builder()
                .id(client.getId())
                .clientId(client.getClientId())
                .clientIdIssuedAt(client.getClientIdIssuedAt())
                .clientSecret(client.getClientSecret())
                .clientName(client.getClientName())
                .clientProfile(client.getClientProfile())
                .clientAuthenticationMethods(client.getClientAuthenticationMethods().stream().map(ClientAuthenticationMethod::getValue).collect(Collectors.toSet()))
                .authorizationGrantTypes(client.getAuthorizationGrantTypes().stream().map(AuthorizationGrantType::getValue).collect(Collectors.toSet()))
                .redirectUris(client.getRedirectUris())
                .scopes(client.getScopes())
                .tokenSettings(ClientUtils.resolveTokenSettingsModel(client.getTokenSettings()))
                .clientSettings(ClientUtils.resolveClientSettingsModel(client.getClientSettings()))
                .build();
    }

}
