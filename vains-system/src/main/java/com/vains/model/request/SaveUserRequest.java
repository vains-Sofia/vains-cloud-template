package com.vains.model.request;

import com.vains.enums.SexEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * 添加用户入参
 *
 * @author vains
 */
@Data
@ApiModel(value = "添加用户入参", description = "添加用户入参")
public class SaveUserRequest {

    @NotEmpty
    @ApiModelProperty("账号")
    private String username;

    @NotEmpty
    @ApiModelProperty("用户昵称")
    private String nickName;

    @NotEmpty
    @ApiModelProperty("用户手机号")
    private String phone;

    @Email
    @NotEmpty
    @ApiModelProperty("用户邮箱")
    private String email;

    @NotEmpty
    @ApiModelProperty("头像")
    private String avatar;

    @NotNull
    @ApiModelProperty("0-男 1-女 2-未知")
    private SexEnum sex;

    @NotEmpty
    @ApiModelProperty("密码")
    private String password;

}
