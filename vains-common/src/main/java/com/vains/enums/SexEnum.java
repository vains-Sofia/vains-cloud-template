package com.vains.enums;

import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 性别枚举
 *
 * @author vains
 */
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
     * JsonValue Json序列化时使用该值
     */
    @JsonValue
    private final Integer value;

    public String getName() {
        return name;
    }

    @Override
    public Integer getValue() {
        return value;
    }

    SexEnum(String name, Integer value) {
        this.name = name;
        this.value = value;
    }
}
