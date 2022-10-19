package com.vains.enums;

import com.baomidou.mybatisplus.annotation.IEnum;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.vains.config.covert.EnumJsonDeserializer;

import java.io.Serializable;
import java.util.Arrays;

/**
 * 枚举基类
 * @author yujinxiang
 * @param <E> 子枚举
 * @param <V> 枚举value的类型
 */
@JsonDeserialize(using = EnumJsonDeserializer.class)
public interface BaseEnum<E extends Enum<E>, V extends Serializable> extends IEnum<V> {

    /**
     * 根据子类Class获取对应的实例
     * @param <E> 子类class类型
     * @param <V> 枚举值类型
     * @param clazz 子类class
     * @param value value的值
     * @return 根据参数value获取参数clazz的实例
     */
    static <E extends BaseEnum<?, V>, V extends Serializable> E fromValue(Class<E> clazz, V value) {
        return Arrays.stream(clazz.getEnumConstants()).filter(e -> e.getValue().equals(value)).findFirst().orElse(null);
    }

}