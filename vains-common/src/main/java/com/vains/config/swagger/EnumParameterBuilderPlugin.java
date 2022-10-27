package com.vains.config.swagger;

import com.baomidou.mybatisplus.annotation.IEnum;
import com.fasterxml.classmate.ResolvedType;
import com.vains.enums.BaseEnum;
import com.vains.util.SwaggerUtils;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.ObjectUtils;
import org.springframework.util.ReflectionUtils;
import springfox.documentation.builders.OperationBuilder;
import springfox.documentation.builders.RequestParameterBuilder;
import springfox.documentation.schema.ElementFacet;
import springfox.documentation.schema.EnumerationFacet;
import springfox.documentation.schema.ScalarType;
import springfox.documentation.service.ParameterSpecification;
import springfox.documentation.service.RequestParameter;
import springfox.documentation.service.ResolvedMethodParameter;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.OperationBuilderPlugin;
import springfox.documentation.spi.service.ParameterBuilderPlugin;
import springfox.documentation.spi.service.contexts.OperationContext;
import springfox.documentation.spi.service.contexts.ParameterContext;

import java.lang.reflect.Field;
import java.util.*;

/**
 * 将Query param或Form data中枚举字段的文档转为自定义显示格式的插件
 *     转换后的注释为：字段原注释 (枚举中定义的枚举值)
 *       设置枚举字段在文档中的入参为枚举value，并非默认枚举值
 *
 * @author vains
 */
@Configuration
@ConditionalOnClass({IEnum.class})
public class EnumParameterBuilderPlugin implements ParameterBuilderPlugin, OperationBuilderPlugin {

    @Override
    public void apply(ParameterContext context) {
        Class<?> parameterClazz = context.resolvedMethodParameter().getParameterType().getErasedType();

        if (BaseEnum.class.isAssignableFrom(parameterClazz)) {
            // 获取枚举字段的描述和默认值
            SwaggerUtils.EnumDescription enumDescription = SwaggerUtils.getFiledEnumDescription(parameterClazz);
            RequestParameterBuilder requestParameterBuilder = context.requestParameterBuilder();
            requestParameterBuilder.description(enumDescription.getDescription());
            requestParameterBuilder.query(simpleParameterSpecificationBuilder ->
                    simpleParameterSpecificationBuilder
                            .model(modelSpecificationBuilde -> modelSpecificationBuilde.scalarModel(ScalarType.INTEGER))
                            .enumerationFacet(enumerationElementFacetBuilder -> enumerationElementFacetBuilder.allowedValues(enumDescription.getDefaultValues()))
            );
        }
    }

    @Override
    public boolean supports(DocumentationType documentationType) {
        return true;
    }

    @Override
    @SuppressWarnings("unchecked")
    public void apply(OperationContext context) {
        context.getParameters().stream()
                .map(ResolvedMethodParameter::getParameterType)
                // 获取入参类型
                .map(ResolvedType::getErasedType)
                // 获取每个字段
                .map(Class::getDeclaredFields)
                // 双重循环遍历每个字段，筛选出枚举类型的进行处理
                .forEach(f -> Arrays.stream(f).filter(e -> BaseEnum.class.isAssignableFrom(e.getType())).forEach(field -> {
                    Class<?> fieldClazz = field.getType();
                    // 获取枚举字段的描述和默认值
                    SwaggerUtils.EnumDescription enumDescription = SwaggerUtils.getFiledEnumDescription(fieldClazz);

                    // 获取参数builder
                    OperationBuilder operationBuilder = context.operationBuilder();
                    // 通过反射获取入参文档
                    Field parametersField = ReflectionUtils.findField(operationBuilder.getClass(), "requestParameters");
                    if (parametersField != null) {
                        ReflectionUtils.makeAccessible(parametersField);
                        // 通过反射获取参数文档列表
                        Set<RequestParameter> set = (Set<RequestParameter>) ReflectionUtils.getField(parametersField, operationBuilder);
                        Optional<RequestParameter> parameter = Optional.ofNullable(set).orElse(Collections.emptySet()).stream().filter(e -> Objects.equals(field.getName(), e.getName())).findFirst();
                        if (parameter.isPresent()) {
                            // 获取当前字段对应的入参文档对象
                            RequestParameter requestParameter = parameter.get();
                            ParameterSpecification specification = requestParameter.getParameterSpecification();
                            if (specification.getQuery().isPresent()) {
                                List<ElementFacet> facets = specification.getQuery().get().getFacets();
                                if (!ObjectUtils.isEmpty(facets)) {
                                    // 重置文档接受的值
                                    EnumerationFacet facet = new EnumerationFacet(enumDescription.getDefaultValues());
                                    facets.set(0, facet);
                                }
                            }
                            // 获取描述字段
                            Field description = ReflectionUtils.findField(requestParameter.getClass(), "description");
                            if (description != null) {
                                ReflectionUtils.makeAccessible(description);
                                // 重置描述
                                ReflectionUtils.setField(description, requestParameter, requestParameter.getDescription() + " (" + enumDescription.getDescription() + ")");
                            }
                        }

                    }
                }));
    }
}