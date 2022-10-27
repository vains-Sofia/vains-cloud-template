package com.vains.model.request;

import com.vains.enums.MenuTypeEnum;
import com.vains.enums.SexEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 测试枚举入参
 */
@Data
@ApiModel(value = "测试枚举入参", description = "测试枚举入参")
public class TestEnumRequest {

    @NotBlank
    @ApiModelProperty("测试名称")
    private String name;

    @NotNull
    @ApiModelProperty("测试菜单枚举")
    private MenuTypeEnum menuType;

    @NotNull
    @ApiModelProperty("性别")
    private SexEnum sex;

}