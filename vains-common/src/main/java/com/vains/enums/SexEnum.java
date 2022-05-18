package com.vains.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * 性别枚举
 *
 * @author vains
 */
public enum SexEnum {

    /**
     * 男
     */
    MAN("男", 0),

    /**
     * 女
     */
    WOMAN("女", 1),

    /**
     * 未知
     */
    UN_KNOW("未知", 2);

    /**
     * 性别名
     */
    private String name;

    /**
     * 性别值
     * EnumValue MybatisPlus标记该字段为数据库存储的值
     * JsonValue Json序列化时使用该值
     */
    @EnumValue
    @JsonValue
    private Integer value;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }

    SexEnum(String name, Integer value) {
        this.name = name;
        this.value = value;
    }
}
