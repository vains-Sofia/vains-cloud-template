package com.vains.config.covert;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.vains.enums.BaseEnum;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 枚举反序列化处理器
 * @author vains
 * @param <T> 枚举类
 * @param <V> 枚举值的类型
 */
@Slf4j
public class EnumJsonSerializer<T extends BaseEnum<?, V>, V extends Serializable> extends JsonSerializer<T> {


    @Override
    public void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (Objects.isNull(t)) {
            jsonGenerator.writeNull();
            return;
        }
        // 写入原本字段的值
        jsonGenerator.writeObject(t.getValue());

        // 获取字段名
        String currentName = jsonGenerator.getOutputContext().getCurrentName();

        // 获取当前枚举的class
        Class<?> clazz = t.getClass();
        // 获取枚举中所有字段
        Field[] fields = clazz.getDeclaredFields();
        // 去掉静态字段
        List<Field> fieldList = Arrays.stream(fields).filter(f -> !Modifier.isStatic(f.getModifiers())).collect(Collectors.toList());
        fieldList.forEach(field -> {
            try {
                field.setAccessible(true);
                // 序列化是插入枚举中的字段，规则为原字段名+枚举字段名(首字母大写)
                jsonGenerator.writeObjectField(currentName + upperCaseFirstString(field.getName()), field.get(t));
            } catch (IOException e) {
                log.warn("Can not serializer enum field [{}]. cause: [{}].", field.getName(), e.getMessage());
            } catch (IllegalAccessException e) {
                log.warn("Can not access a member of field [{}] with modifiers “private”. cause: [{}].", field.getName(), e.getMessage());
            }
        });
    }

    /**
    * 首字母大写(进行字母的ascii编码前移，效率是最高的)
    *
    * @param fieldName 需要转化的字符串
    * @return 首字母大写
    */
    private String upperCaseFirstString(String fieldName) {
        char[] chars = fieldName.toCharArray();
        chars[0] = toUpperCase(chars[0]);
        return String.valueOf(chars);
    }


    /**
    * 字符转成大写
    *
    * @param c 需要转化的字符
    * return 转为字母的大写
    */
    private char toUpperCase(char c) {
        if (97 <= c && c <= 122) {
            c ^= 32;
        }
        return c;
    }

}