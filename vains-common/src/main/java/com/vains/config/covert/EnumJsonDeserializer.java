package com.vains.config.covert;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.vains.enums.BaseEnum;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
* 枚举反序列化处理
* @author vains
* @param <T> 枚举类型
* @param <V> 枚举值的类型
*/
@Slf4j
@NoArgsConstructor
@AllArgsConstructor
public class EnumJsonDeserializer<T extends BaseEnum<?, V>, V extends Serializable> extends JsonDeserializer<T> implements ContextualDeserializer {

    private Class<T> clazz;

    private Class<V> valueClazz;

    @Override
    @SuppressWarnings("unchecked")
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        // 前端传入的值
        String text = jsonParser.getText();
        // 调用valueOf方法将值转为对应的枚举值的类型
        String castMethod = "valueOf";
        if (valueClazz == null) {
            return null;
        }
        V value = null;
        // 如果枚举值是String类型，则直接转换
        if (valueClazz.isInstance(text)) {
            value = valueClazz.cast(text);
            return BaseEnum.fromValue(clazz, value);
        }
        try {
            // 调用枚举值类型的valueOf方法对值进行类型转换
            Method declaredMethod = valueClazz.getDeclaredMethod(castMethod, String.class);
            value = (V) declaredMethod.invoke((null), text);
        } catch (IllegalAccessException e) {
            log.warn("Can not access a member of class [{}] with modifiers “private”. cause: {}", valueClazz, e.getMessage());
        } catch (NoSuchMethodException e) {
            log.warn("No such method in class [{}]. cause: {}", valueClazz, e.getMessage());
        } catch (InvocationTargetException e) {
            log.warn("Can not invoke method [{}]. cause: {}", castMethod, e.getMessage());
        }
        return BaseEnum.fromValue(clazz, value);
    }


    @Override
    @SneakyThrows
    @SuppressWarnings("unchecked")
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) {
        JavaType type = beanProperty.getType();
        // 如果是容器，则返回容器内部枚举类型
        while (type.isContainerType()) {
            type = type.getContentType();
        }
        // 获取枚举类型
        Class<?> rawClass = type.getRawClass();
        // 获取枚举实现的接口
        Type baseInterface = rawClass.getGenericInterfaces()[0];
        Class<?> actualTypeArgument = null;
        if (baseInterface instanceof ParameterizedType && ((ParameterizedType) baseInterface).getActualTypeArguments().length == 2) {
            // 获取父接口的泛型类型
            String typeName = ((ParameterizedType) baseInterface).getActualTypeArguments()[1].getTypeName();
            // 转成具体的class类型，否则将会是 java.lang.Class
            actualTypeArgument = ClassLoader.getSystemClassLoader().loadClass(typeName);
        }
        // 实例化枚举反序列化解析器
        return new EnumJsonDeserializer<>((Class<T>) rawClass, (Class<V>) actualTypeArgument);
    }
}