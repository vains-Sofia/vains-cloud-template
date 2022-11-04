package com.vains.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Set;

import com.vains.handler.*;
import lombok.*;
import lombok.experimental.Accessors;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;
import org.springframework.security.oauth2.server.authorization.config.ClientSettings;
import org.springframework.security.oauth2.server.authorization.config.TokenSettings;

/**
 * <p>
 * 
 * </p>
 *
 * @author vains
 * @since 2022-06-12
 */
@Data
@Accessors(chain = true)
@TableName(value = "oauth2_registered_client", autoResultMap = true)
public class Oauth2RegisteredClient implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键Id
     */
    @TableId(type = IdType.ASSIGN_ID)
    private String id;

    /**
     * 客户端Id
     */
    private String clientId;

    /**
     * 客户端Id签发时间
     */
    private LocalDateTime clientIdIssuedAt;

    /**
     * 客户端秘钥
     */
    private String clientSecret;

    /**
     * 客户端秘钥过期时间
     */
    private LocalDateTime clientSecretExpiresAt;

    /**
     * 客户端名称
     */
    private String clientName;

    /**
     * 客户端头像
     */
    private String clientProfile;

    /**
     * 客户端认证方式
     */
    @TableField(typeHandler = AuthenticationMethodTypeHandler.class)
    private Set<ClientAuthenticationMethod> clientAuthenticationMethods;

    /**
     * 客户端拥有的授权方式
     */
    @TableField(typeHandler = AuthenticationGrantTypeHandler.class)
    private Set<AuthorizationGrantType> authorizationGrantTypes;

    /**
     * 回调地址
     */
    @TableField(typeHandler = StringCollectionTypeHandler.class)
    private Set<String> redirectUris;

    /**
     * 授权范围
     */
    @TableField(typeHandler = StringCollectionTypeHandler.class)
    private Set<String> scopes;

    /**
     * 客户端设置
     */
    @TableField(typeHandler = ClientSettingsTypeHandler.class)
    private ClientSettings clientSettings;

    /**
     * 通过该客户端授权的范围
     */
    @TableField(typeHandler = TokenSettingsTypeHandler.class)
    private TokenSettings tokenSettings;

    /**
     * 对称加密后的秘钥
     */
    private String copySecret;

}
