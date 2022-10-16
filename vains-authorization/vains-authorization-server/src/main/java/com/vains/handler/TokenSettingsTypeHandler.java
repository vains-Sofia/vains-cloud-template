package com.vains.handler;

import com.baomidou.mybatisplus.extension.handlers.AbstractJsonTypeHandler;
import com.vains.util.JsonUtils;
import org.springframework.security.oauth2.core.OAuth2TokenFormat;
import org.springframework.security.oauth2.server.authorization.config.ConfigurationSettingNames;
import org.springframework.security.oauth2.server.authorization.config.TokenSettings;

import java.util.Map;

/**
 * 客户端设置序列化处理器
 *
 * @author vains
 */
public class TokenSettingsTypeHandler extends AbstractJsonTypeHandler<TokenSettings> {

    @Override
    protected TokenSettings parse(String json) {
        // 将设置转为Map
        Map<String, Object> settings = JsonUtils.jsonCovertToObjectAuth(json, Map.class, String.class, Object.class);
        TokenSettings.Builder builder = TokenSettings.withSettings(settings);
        if (!settings.containsKey(ConfigurationSettingNames.Token.ACCESS_TOKEN_FORMAT)) {
            builder.accessTokenFormat(OAuth2TokenFormat.SELF_CONTAINED);
        }
        // 通过Map构建bean
        return builder.build();
    }

    @Override
    protected String toJson(TokenSettings tokenSettings) {
        Map<String, Object> settings = tokenSettings.getSettings();
        // 将设置取出并转为字符串
        return JsonUtils.objectCovertToJsonAuth(settings);
    }
}
