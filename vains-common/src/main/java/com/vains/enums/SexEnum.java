package com.vains.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 性别枚举
 *
 * @author vains
 */
@Getter
@AllArgsConstructor
public enum SexEnum implements BaseEnum<SexEnum, Integer> {

    /**
     * 男
     */
    MAN("男", 1),

    /**
     * 女
     */
    WOMAN("女", 2),

    /**
     * 未知
     */
    UN_KNOW("未知", 3);

    /**
     * 性别名
     */
    private final String name;

    /**
     * 性别值
     */
    private final Integer value;

}
