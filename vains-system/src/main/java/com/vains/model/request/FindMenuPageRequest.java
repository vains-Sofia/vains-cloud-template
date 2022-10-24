package com.vains.model.request;

import com.vains.enums.MenuTypeEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
* 分页查询资源菜单列表入参
*
* @author vains
*/
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "查询角色列表入参", description = "查询角色列表入参")
public class FindMenuPageRequest extends Pagination {

    @ApiModelProperty("菜单名称")
    private String name;

    @ApiModelProperty("菜单类型：0:菜单,1:按钮,2:Api接口,3:其它")
    private MenuTypeEnum type;

}