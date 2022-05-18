package com.vains.model.security;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**
 * 令牌自省返回类
 * @author vains
 */
@Data
public class IntrospectResult {

    /**
     * 是否存活
     */
    private Boolean active;

    /**
     * Jwt主体(账号)
     */
    private String sub;

    /**
     * Audience声明了JWT 的目标接收者
     */
    private List<String> aud;

    /**
     * Not Before声明标识了不能接受 JWT 进行处理之前的时间
     *
     */
    private Long nbf;

    /**
     * 授权范围
     */
    private String scope;

    /**
     * Issuer 声明标识了发布 JWT 的委托人
     */
    private String iss;

    /**
     * the Expiration time 声明标识了过期时间，在该过期时间或之后，JWT 不能被接受处理
     */
    private Long exp;

    /**
     * The Issued at 声明标识了 JWT 的发布时间
     */
    private Long iat;

    /**
     * 用户Id
     */
    private Integer userId;

    /**
     * 权限列表
     */
    private List<String> authorities;

    /**
     * 客户端Id
     */
    @JsonProperty("client_id")
    private String clientId;

    /**
     * token 类型
     */
    @JsonProperty("token_type")
    private String tokenType;

}