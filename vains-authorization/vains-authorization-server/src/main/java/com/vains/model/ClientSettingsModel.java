package com.vains.model;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 客户端设置入参
 *
 * @author vains
 */
@Data
public class ClientSettingsModel {

    @ApiModelProperty("需要验证秘钥")
    private Boolean requireProofKey;

    @ApiModelProperty("需要授权确认")
    private Boolean requireAuthorizationConsent;

    @ApiModelProperty("Jwk配置地址")
    private String jwkSetUrl;

}
