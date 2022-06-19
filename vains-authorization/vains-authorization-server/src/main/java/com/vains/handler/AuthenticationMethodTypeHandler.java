package com.vains.handler;

import com.baomidou.mybatisplus.extension.handlers.AbstractJsonTypeHandler;
import com.vains.util.ClientUtils;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;
import org.springframework.util.StringUtils;

import java.util.*;
import java.util.stream.Collectors;

/**
 * 客户端认证方式序列化处理器
 *
 * @author vains
 */
public class AuthenticationMethodTypeHandler extends AbstractJsonTypeHandler<Set<ClientAuthenticationMethod>> {


    @Override
    protected Set<ClientAuthenticationMethod> parse(String json) {
        // 将数据库中的数据以,分割返回一个Set
        Set<String> methods = StringUtils.commaDelimitedListToSet(json);
        // 指定Set的泛型为ClientAuthenticationMethod
        return methods.stream().map(ClientUtils::resolveClientAuthenticationMethod).collect(Collectors.toSet());
    }

    @Override
    protected String toJson(Set<ClientAuthenticationMethod> authenticationMethods) {
        // 创建一个集合，长度是参数的长度
        List<String> clientAuthenticationMethods = new ArrayList<>(authenticationMethods.size());
        authenticationMethods.forEach(type -> clientAuthenticationMethods.add(type.getValue()));
        // 将集合转为以,分割的字符串
        return StringUtils.collectionToCommaDelimitedString(clientAuthenticationMethods);
    }

}
