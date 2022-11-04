package com.vains.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 客户端设置入参
 *
 * @author vains
 */
@Data
@ApiModel(value = "生成Token设置", description = "生成Token设置模型")
public class TokenSettingsModel {

    @ApiModelProperty("重复使用刷新token")
    private Boolean reuseRefreshTokens;

    @NotNull
    @ApiModelProperty("token有效时长(单位：秒)")
    private Long accessTokenTimeToLive;

    @NotNull
    @ApiModelProperty("refreshToken有效时长(单位：秒)")
    private Long refreshTokenTimeToLive;

    @NotBlank
    @ApiModelProperty("token有效时长单位")
    private String accessTokenTimeToLiveUnit;

    @NotBlank
    @ApiModelProperty("refreshToken有效时长单位")
    private String refreshTokenTimeToLiveUnit;

}
