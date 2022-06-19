package com.vains.model;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 客户端设置入参
 *
 * @author vains
 */
@Data
public class TokenSettingsModel {

    @ApiModelProperty("重复使用刷新token")
    private Boolean reuseRefreshTokens;

    @ApiModelProperty("token有效时长(单位：秒)")
    private Long accessTokenTimeToLive;

    @ApiModelProperty("refreshToken有效时长(单位：秒)")
    private Long refreshTokenTimeToLive;

}
