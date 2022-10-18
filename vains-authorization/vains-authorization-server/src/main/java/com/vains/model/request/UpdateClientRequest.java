package com.vains.model.request;

import com.vains.model.ClientSettingsModel;
import com.vains.model.TokenSettingsModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Set;

/**
 * 注册客户端入参
 *
 * @author vains
 */
@Data
@ApiModel(value = "更新客户端入参", description = "更新客户端入参")
public class UpdateClientRequest {

    @NotBlank
    @ApiModelProperty("客户端主键Id")
    private String id;

    @NotBlank
    @ApiModelProperty("客户端Id")
    private String clientId;

    @NotBlank
    @ApiModelProperty("客户端名称")
    private String clientName;

    @NotBlank
    @ApiModelProperty("客户端头像")
    private String clientProfile;

    @NotEmpty
    @ApiModelProperty("客户端认证方式")
    private Set<String> clientAuthenticationMethods;

    @NotEmpty
    @ApiModelProperty("客户端拥有的授权方式")
    private Set<String> authorizationGrantTypes;

    @NotEmpty
    @ApiModelProperty("回调地址")
    private Set<String> redirectUris;

    @NotNull
    @ApiModelProperty("通过该客户端授权的范围")
    private TokenSettingsModel tokenSettings;

    @NotNull
    @ApiModelProperty("客户端设置")
    private ClientSettingsModel clientSettings;

}
