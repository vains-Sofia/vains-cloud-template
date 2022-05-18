package com.vains.constant;

import org.springframework.security.oauth2.jwt.JwtClaimNames;

/**
 * jwt属性常量类
 *
 * @author vains
 */
public final class JwtClaimsConstants implements JwtClaimNames {

    /**
     * 权限属性key
     */
    public static final String AUTHORITIES = "authorities";

    /**
     * 权限属性key
     */
    public static final String SCOPE = "scope";

    /**
     * 用户Id属性key
     */
    public static final String USER_ID = "userId";

    /**
     * 用户昵称属性key
     */
    public static final String USER_NICKNAME = "userNickName";

}
