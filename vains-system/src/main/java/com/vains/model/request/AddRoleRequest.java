package com.vains.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 添加角色入参
 * @author vains
 */
@Data
@ApiModel(value = "添加角色入参", description = "添加角色入参")
public class AddRoleRequest {

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