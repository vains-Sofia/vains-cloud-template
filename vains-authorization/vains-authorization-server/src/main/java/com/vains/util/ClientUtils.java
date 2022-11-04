package com.vains.util;

import com.vains.model.ClientSettingsModel;
import com.vains.model.TokenSettingsModel;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;
import org.springframework.security.oauth2.jose.jws.SignatureAlgorithm;
import org.springframework.security.oauth2.server.authorization.config.ClientSettings;
import org.springframework.security.oauth2.server.authorization.config.TokenSettings;
import org.springframework.util.ObjectUtils;

import java.time.Duration;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
import java.util.Map;

import static org.springframework.security.oauth2.server.authorization.config.ConfigurationSettingNames.Client.*;
import static org.springframework.security.oauth2.server.authorization.config.ConfigurationSettingNames.Token.*;

/**
 * 客户端帮助类
 *
 * @author vains
 */
public class ClientUtils {

    private ClientUtils() {}

    /**
     * 根据数据库中客户端认证类型获取对应的具体的客户端认证方式
     * @param clientAuthenticationMethod 数据库中的认证方式
     * @return 返回对应的认证方式
     */
    public static ClientAuthenticationMethod resolveClientAuthenticationMethod(String clientAuthenticationMethod) {
        if (ClientAuthenticationMethod.CLIENT_SECRET_BASIC.getValue().equals(clientAuthenticationMethod)) {
            return ClientAuthenticationMethod.CLIENT_SECRET_BASIC;
        } else if (ClientAuthenticationMethod.CLIENT_SECRET_POST.getValue().equals(clientAuthenticationMethod)) {
            return ClientAuthenticationMethod.CLIENT_SECRET_POST;
        } else {
            return ClientAuthenticationMethod.NONE.getValue().equals(clientAuthenticationMethod) ? ClientAuthenticationMethod.NONE : new ClientAuthenticationMethod(clientAuthenticationMethod);
        }
    }

    /**
     * 根据客户端授权类型获取对应的具体的客户端授权方式
     * @param authorizationGrantType 客户端授权方式
     * @return 具体的客户端授权方式
     */
    public static AuthorizationGrantType resolveAuthorizationGrantType(String authorizationGrantType) {
        if (AuthorizationGrantType.AUTHORIZATION_CODE.getValue().equals(authorizationGrantType)) {
            return AuthorizationGrantType.AUTHORIZATION_CODE;
        } else if (AuthorizationGrantType.CLIENT_CREDENTIALS.getValue().equals(authorizationGrantType)) {
            return AuthorizationGrantType.CLIENT_CREDENTIALS;
        } else {
            return AuthorizationGrantType.REFRESH_TOKEN.getValue().equals(authorizationGrantType) ? AuthorizationGrantType.REFRESH_TOKEN : new AuthorizationGrantType(authorizationGrantType);
        }
    }

    /**
     * 生成一个客户端设置对象
     * @param clientSettingsModel 客户端设置入参
     * @return 返回客户端设置
     */
    public static ClientSettings resolveClientSettings(ClientSettingsModel clientSettingsModel) {
        Map<String, Object> settings = new HashMap<>(2);
        if (clientSettingsModel == null) {
            clientSettingsModel = new ClientSettingsModel();
        }
        if (!ObjectUtils.isEmpty(clientSettingsModel.getJwkSetUrl())) {
            settings.put(JWK_SET_URL, clientSettingsModel.getJwkSetUrl());
        }
        settings.put(REQUIRE_PROOF_KEY, clientSettingsModel.getRequireProofKey() == null ? Boolean.FALSE : clientSettingsModel.getRequireProofKey());
        settings.put(REQUIRE_AUTHORIZATION_CONSENT, clientSettingsModel.getRequireAuthorizationConsent() == null ? Boolean.TRUE : clientSettingsModel.getRequireAuthorizationConsent());
        return ClientSettings.withSettings(settings).build();
    }

    /**
     * 根据spring的设置生成自己的设置bean
     * @param clientSettings 客户端设置
     * @return 设置
     */
    public static ClientSettingsModel resolveClientSettingsModel(ClientSettings clientSettings) {
        ClientSettingsModel model = new ClientSettingsModel();
        model.setJwkSetUrl(clientSettings.getJwkSetUrl());
        model.setRequireProofKey(clientSettings.isRequireProofKey());
        model.setRequireAuthorizationConsent(clientSettings.isRequireAuthorizationConsent());
        return model;
    }

    /**
     * 生成一个Token设置对象
     * @param tokenSettingsModel Token设置入参
     * @return 返回Token设置
     */
    public static TokenSettings resolveTokenSettings(TokenSettingsModel tokenSettingsModel) {
        Map<String, Object> settings = new HashMap<>(4);
        if (tokenSettingsModel == null) {
            tokenSettingsModel = new TokenSettingsModel();
        }
        Duration accessTokenTimeToLive = Duration.of(tokenSettingsModel.getAccessTokenTimeToLive() == null ? 7200L : tokenSettingsModel.getAccessTokenTimeToLive(), ChronoUnit.valueOf(tokenSettingsModel.getAccessTokenTimeToLiveUnit()));
        settings.put(ACCESS_TOKEN_TIME_TO_LIVE, Duration.ofSeconds(accessTokenTimeToLive.getSeconds()));
        Duration refreshTokenTimeToLive = Duration.of(tokenSettingsModel.getRefreshTokenTimeToLive() == null ? 604800L : tokenSettingsModel.getRefreshTokenTimeToLive(), ChronoUnit.valueOf(tokenSettingsModel.getRefreshTokenTimeToLiveUnit()));
        settings.put(REFRESH_TOKEN_TIME_TO_LIVE, Duration.ofSeconds(refreshTokenTimeToLive.getSeconds()));
        settings.put(REUSE_REFRESH_TOKENS, tokenSettingsModel.getReuseRefreshTokens() == null ? Boolean.FALSE :  tokenSettingsModel.getReuseRefreshTokens());
        // TODO 暂时默认使用RS256的方式加密
        settings.put(ID_TOKEN_SIGNATURE_ALGORITHM, SignatureAlgorithm.RS256);
        return TokenSettings.withSettings(settings).build();
    }

    /**
     * 根据spring的设置生成自己的设置bean
     * @param tokenSettings Token设置
     * @return 设置
     */
    public static TokenSettingsModel resolveTokenSettingsModel(TokenSettings tokenSettings) {
        TokenSettingsModel model = new TokenSettingsModel();
        model.setReuseRefreshTokens(tokenSettings.isReuseRefreshTokens());
        model.setAccessTokenTimeToLive(tokenSettings.getAccessTokenTimeToLive().getSeconds());
        model.setRefreshTokenTimeToLive(tokenSettings.getRefreshTokenTimeToLive().getSeconds());
        // TODO 设置默认单位，现在尚未有好的解决方案
        model.setAccessTokenTimeToLiveUnit("SECONDS");
        model.setRefreshTokenTimeToLiveUnit("SECONDS");
        return model;
    }

}
