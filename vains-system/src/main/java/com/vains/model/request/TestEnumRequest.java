package com.vains.model.request;

import com.vains.enums.SexEnum;
import com.vains.enums.TestEnum;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 测试枚举入参
 */
@Data
public class TestEnumRequest {

    @NotBlank
    @ApiModelProperty("测试")
    private String name;

    @NotNull
    @ApiModelProperty("测试枚举,值为字符串的1、2、3")
    private TestEnum testEnum;

    @NotNull
    @ApiModelProperty("性别枚举,值为整数的1、2、3")
    private SexEnum sex;

}