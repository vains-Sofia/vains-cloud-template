package com.vains.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;

/**
 * 请求用户列表参数类
 *
 * @author vains
 */
@Data
@ApiModel(value = "用户数据", description = "用户数据页面载体")
public class UserListRequest {

    @NotEmpty(message = "{system.user.username}")
    @ApiModelProperty("账号")
    private String username;

    @ApiModelProperty("用户手机号")
    private String phone;

    @ApiModelProperty("用户邮箱")
    private String email;

    @ApiModelProperty("用户昵称")
    private String nickName;

}
