package com.vains.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 菜单类型枚举
 * @author vains
 */
@Getter
@AllArgsConstructor
public enum MenuTypeEnum implements BaseEnum<MenuTypeEnum, Integer> {

    /**
     * 菜单类型
     */
    MENU("菜单", 0),

    /**
    * 按钮类型
    */
    BUTTON("按钮", 1),

    /**
    * 按钮类型
    */
    REST_API_TYPE("API接口", 2),

    /**
    * 其它类型
    */
    OTHER_TYPE("其它", 3);

    /**
     * 类型名称
     */
    private final String name;

    /**
     * 类型值
     */
    private final Integer value;

    @Override
    public Integer getValue() {
        return value;
    }
}