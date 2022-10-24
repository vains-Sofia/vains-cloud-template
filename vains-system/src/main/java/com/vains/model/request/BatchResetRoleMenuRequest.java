package com.vains.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 重置角色资源菜单入参
 *
 * @author vains
 */
@Data
@ApiModel(value = "重置角色资源菜单入参", description = "重置角色资源菜单入参")
public class BatchResetRoleMenuRequest {

    @NotNull
    @ApiModelProperty("角色名称")
    private Integer roleId;

    @NotEmpty
    @ApiModelProperty("角色名称")
    private List<Integer> menusId;

}