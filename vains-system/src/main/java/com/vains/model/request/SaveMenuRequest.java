package com.vains.model.request;

import com.vains.enums.MenuTypeEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 添加资源菜单入参
 *
 * @author vains
 */
@Data
@ApiModel(value = "添加资源菜单入参", description = "添加资源菜单入参")
public class SaveMenuRequest {

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
    @ApiModelProperty("0:菜单,1:按钮,2:Api接口,3:其它")
    private MenuTypeEnum type;

}