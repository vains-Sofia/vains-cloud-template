package com.vains.config.swagger;

import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.vains.enums.BaseEnum;
import com.vains.util.SwaggerUtils;
import io.swagger.annotations.ApiModelProperty;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.service.AllowableListValues;
import springfox.documentation.service.AllowableValues;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.schema.ModelPropertyBuilderPlugin;
import springfox.documentation.spi.schema.contexts.ModelPropertyContext;

import java.util.*;

/**
 * 自定义Swagger自动生成文档时实体中枚举类型映射插件
 *
 * @author vains
 */
@Slf4j
@Configuration
public class EnumModelPropertyBuilderPlugin implements ModelPropertyBuilderPlugin {

    @Override
    public void apply(ModelPropertyContext context) {
        Optional<BeanPropertyDefinition> definition = context.getBeanPropertyDefinition();
        if (!definition.isPresent()) {
            return;
        }
        if (definition.get().getField() == null) {
            // 获取不到字段信息不处理
            return;
        }
        Class<?> fieldClazz = definition.get().getField().getRawType();
        if (BaseEnum.class.isAssignableFrom(fieldClazz)) {
            ApiModelProperty annotation = definition.get().getField().getAnnotated().getAnnotation(ApiModelProperty.class);
            if (annotation != null) {
                // 获取枚举字段的描述和默认值
                SwaggerUtils.EnumDescription enumDescription = SwaggerUtils.getFiledEnumDescription(fieldClazz);
                // 获取注解描述
                String fieldDescription = annotation.value();
                // 重置文档可选值
                AllowableValues allowableValues = new AllowableListValues(enumDescription.getDefaultValues(), "LIST");
                context.getSpecificationBuilder()
                        .description(fieldDescription + " (" + enumDescription.getDescription() + ")")
                        .enumerationFacet(builder -> builder.allowedValues(allowableValues));
            }
        }
    }

    @Override
    public boolean supports(DocumentationType documentationType) {
        return Boolean.TRUE;
    }
}