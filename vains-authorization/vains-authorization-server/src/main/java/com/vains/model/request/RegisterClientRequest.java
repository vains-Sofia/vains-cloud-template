package com.vains.model.request;

import com.vains.model.ClientSettingsModel;
import com.vains.model.TokenSettingsModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import java.util.Set;

/**
 * 注册客户端入参
 *
 * @author vains
 */
@Data
public class RegisterClientRequest {

    @NotEmpty
    @ApiModelProperty("客户端Id")
    private String clientId;

    @NotEmpty
    @ApiModelProperty("客户端秘钥")
    private String clientSecret;

    @NotEmpty
    @ApiModelProperty("客户端名称")
    private String clientName;

    @NotEmpty
    @ApiModelProperty("客户端认证方式")
    private Set<String> clientAuthenticationMethods;

    @NotEmpty
    @ApiModelProperty("客户端拥有的授权方式")
    private Set<String> authorizationGrantTypes;

    @NotEmpty
    @ApiModelProperty("回调地址")
    private Set<String> redirectUris;

    @NotEmpty
    @ApiModelProperty("授权范围")
    private Set<String> scopes;

    @ApiModelProperty("通过该客户端授权的范围")
    private TokenSettingsModel tokenSettings;

    @ApiModelProperty("客户端设置")
    private ClientSettingsModel clientSettings;

}
