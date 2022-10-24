package com.vains.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 修改角色入参
 *
 * @author vains
 */
@Data
@ApiModel(value = "修改角色入参", description = "修改角色入参")
public class UpdateRoleRequest {

    @NotNull
    @ApiModelProperty("主键id")
    private Integer id;

    /**
     * 角色名
     */
    @NotBlank
    @ApiModelProperty("角色名")
    private String roleName;

    /**
     * 排序
     */
    @NotNull
    @ApiModelProperty("排序序号")
    private Integer sort;

}