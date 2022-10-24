package com.vains.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 分页查询角色列表入参
 *
 * @author vains
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "查询角色列表入参", description = "查询角色列表入参")
public class FindRolePageRequest extends Pagination {

    @ApiModelProperty("角色名称")
    private String name;

}