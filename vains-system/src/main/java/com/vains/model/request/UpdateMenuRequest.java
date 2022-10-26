package com.vains.model.request;

import com.vains.enums.MenuTypeEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 修改资源菜单入参
 *
 * @author vains
 */
@Data
@ApiModel(value = "修改资源菜单入参", description = "修改资源菜单入参")
public class UpdateMenuRequest {

    @NotNull
    @ApiModelProperty("菜单主键id")
    private Integer id;

    @NotNull
    @ApiModelProperty("父菜单ID")
    private Integer menuPid;

    @NotBlank
    @ApiModelProperty("菜单名称")
    private String name;

    @NotBlank
    @ApiModelProperty("跳转URL")
    private String url;

    @NotBlank
    @ApiModelProperty("图标")
    private String icon;

    @ApiModelProperty("图标颜色")
    private String iconColor;

    @NotNull
    @ApiModelProperty("排序")
    private Integer sort;

    @NotNull
    @ApiModelProperty("菜单类型")
    private MenuTypeEnum type;

}