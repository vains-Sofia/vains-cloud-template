package com.vains.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.vains.enums.MenuTypeEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 系统菜单表
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SysMenu extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 菜单自增ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 父菜单ID
     */
    private Integer menuPid;

    /**
     * 菜单名称
     */
    private String name;

    /**
     * 跳转URL
     */
    private String url;

    /**
     * 图标
     */
    private String icon;

    /**
     * 图标颜色
     */
    private String iconColor;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 0:菜单,1:按钮,2:Api接口,3:其它
     */
    private MenuTypeEnum type;

}
