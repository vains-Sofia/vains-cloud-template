package com.vains.config.covert;

import com.baomidou.mybatisplus.annotation.IEnum;
import com.vains.enums.BaseEnum;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.core.convert.converter.Converter;
import org.springframework.core.convert.converter.ConverterFactory;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * Query String 枚举转换类
 * @author vains
 */
@Slf4j
@Component
@ConditionalOnClass(IEnum.class)
public class EnumCovertFactory<V extends Serializable, E extends Enum<E>> implements ConverterFactory<String, BaseEnum<E, V>> {

    @Override
    @SneakyThrows
    @SuppressWarnings("unchecked")
    public <T extends BaseEnum<E, V>> Converter<String, T> getConverter(Class<T> targetType) {
        Type baseInterface = targetType.getGenericInterfaces()[0];
        if (baseInterface instanceof ParameterizedType && ((ParameterizedType) baseInterface).getActualTypeArguments().length == 2) {
            // 获取父接口的泛型类型
            String typeName = ((ParameterizedType) baseInterface).getActualTypeArguments()[1].getTypeName();
            // 转成具体的class类型，否则将会是 java.lang.Class
            Class<V> valueClazz = (Class<V>) ClassLoader.getSystemClassLoader().loadClass(typeName);
            // 调用valueOf方法将值转为对应的枚举值的类型
            String castMethod = "valueOf";
            if (valueClazz == null) {
                return null;
            }

            return source -> {
                V value;
                // 如果枚举值是String类型，则直接转换
                if (valueClazz.isInstance(source)) {
                    value = valueClazz.cast(source);
                    return BaseEnum.fromValue(targetType, value);
                }
                try {
                    // 调用枚举值类型的valueOf方法对值进行类型转换
                    Method declaredMethod = valueClazz.getDeclaredMethod(castMethod, String.class);
                    value = (V) declaredMethod.invoke((null), source);
                    return BaseEnum.fromValue(targetType, value);
                } catch (IllegalAccessException e) {
                    log.warn("Can not access a member of class [{}] with modifiers “private”. cause: {}", valueClazz, e.getMessage());
                } catch (NoSuchMethodException e) {
                    log.warn("No such method in class [{}]. cause: {}", valueClazz, e.getMessage());
                } catch (InvocationTargetException e) {
                    log.warn("Can not invoke method [{}]. cause: {}", castMethod, e.getMessage());
                }
                return null;
            };
        }
        return source -> null;
    }

}