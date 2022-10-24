package com.vains.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 重置用户角色入参
 * @author vains
 */
@Data
@ApiModel(value = "重置用户角色入参", description = "重置用户角色入参")
public class BatchResetUserRoleRequest {

    @NotNull
    @ApiModelProperty("角色名称")
    private Integer userId;

    @NotEmpty
    @ApiModelProperty("角色名称")
    private List<Integer> rolesId;

}