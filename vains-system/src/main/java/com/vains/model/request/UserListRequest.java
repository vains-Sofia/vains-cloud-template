package com.vains.model.request;

import com.vains.model.request.Pagination;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotEmpty;

/**
 * 请求用户列表参数类
 *
 * @author vains
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "用户数据", description = "用户数据页面载体")
public class UserListRequest extends Pagination {

    @ApiModelProperty("账号")
    private String username;

    @ApiModelProperty("用户手机号")
    private String phone;

    @ApiModelProperty("用户邮箱")
    private String email;

    @ApiModelProperty("用户昵称")
    private String nickName;

}
