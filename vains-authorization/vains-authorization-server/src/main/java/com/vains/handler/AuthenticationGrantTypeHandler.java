package com.vains.handler;

import com.baomidou.mybatisplus.extension.handlers.AbstractJsonTypeHandler;
import com.vains.util.ClientUtils;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 授权方式序列化处理类
 *
 * @author vains
 */
public class AuthenticationGrantTypeHandler extends AbstractJsonTypeHandler<Set<AuthorizationGrantType>> {

    @Override
    protected Set<AuthorizationGrantType> parse(String json) {
        // 将数据库中的数据以,分割返回一个Set
        Set<String> methods = StringUtils.commaDelimitedListToSet(json);
        // 指定Set的泛型为AuthorizationGrantType
        return methods.stream().map(ClientUtils::resolveAuthorizationGrantType).collect(Collectors.toSet());
    }

    @Override
    protected String toJson(Set<AuthorizationGrantType> authenticationGrantTypes) {
        // 创建一个集合，长度是参数的长度
        List<String> clientAuthenticationGrantTypes = new ArrayList<>(authenticationGrantTypes.size());
        authenticationGrantTypes.forEach(type -> clientAuthenticationGrantTypes.add(type.getValue()));
        // 将集合转为以,分割的字符串
        return StringUtils.collectionToCommaDelimitedString(clientAuthenticationGrantTypes);
    }

}
