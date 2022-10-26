package com.vains.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.util.ReflectionUtils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Swagger工具类
 *
 * @author vains
 */
public class SwaggerUtils {

    private SwaggerUtils() {
        throw new UnsupportedOperationException("Utility classes cannot be instantiated.");
    }

    /**
     * 获取枚举字段的描述和默认值
     *
     * @return 返回描述和默认值
     */
    public static EnumDescription getFiledEnumDescription(Class<?> filedClazz) {
        // 获取枚举中所有字段
        Field[] fields = filedClazz.getDeclaredFields();
        // 去掉静态字段
        List<Field> fieldList = Arrays.stream(fields)
                .filter(f -> !Modifier.isStatic(f.getModifiers()))
                // 排序
                .sorted(Comparator.comparing(Field::getName).reversed())
                .collect(Collectors.toList());
        List<String> values = new ArrayList<>();
        // 获取枚举各枚举实例value和值拼接为字符串返回
        String description = Arrays.stream(filedClazz.getEnumConstants())
                .filter(Objects::nonNull)
                .map(item -> {
                    // 收集values
                    Method getValue = ReflectionUtils.findMethod(item.getClass(), "getValue");
                    if (getValue != null) {
                        ReflectionUtils.makeAccessible(getValue);
                        values.add(String.valueOf(ReflectionUtils.invokeMethod(getValue, item)));
                    }
                    return fieldList.stream().map(field1 -> {
                        ReflectionUtils.makeAccessible(field1);
                        // 从枚举实例中获取对应字段的值转为String，通过 : 拼接
                        return String.valueOf(ReflectionUtils.getField(field1, item));
                    }).collect(Collectors.joining(":"));
                }).collect(Collectors.joining(";"));
        return new EnumDescription(description, values);
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class EnumDescription {

        /**
         * 字段描述
         */
        private String description;

        /**
         * 从枚举中获取的默认值
         */
        private List<String> defaultValues;

    }

}