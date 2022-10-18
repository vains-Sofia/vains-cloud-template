package com.vains.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

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

    @ApiModelProperty("token有效时长(单位：秒)")
    private Long accessTokenTimeToLive;

    @ApiModelProperty("refreshToken有效时长(单位：秒)")
    private Long refreshTokenTimeToLive;

}
