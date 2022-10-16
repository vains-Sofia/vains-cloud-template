package com.vains.handler;

import com.baomidou.mybatisplus.extension.handlers.AbstractJsonTypeHandler;
import com.vains.util.JsonUtils;
import org.springframework.security.oauth2.server.authorization.config.ClientSettings;

import java.util.Map;

/**
 * 客户端设置序列化处理器
 *
 * @author vains
 */
public class ClientSettingsTypeHandler extends AbstractJsonTypeHandler<ClientSettings> {

    @Override
    protected ClientSettings parse(String json) {
        // 将设置转为Map
        Map<String, Object> settings = JsonUtils.jsonCovertToObjectAuth(json, Map.class, String.class, Object.class);
        // 通过Map构建bean
        return ClientSettings.withSettings(settings).build();
    }

    @Override
    protected String toJson(ClientSettings clientSettings) {
        Map<String, Object> settings = clientSettings.getSettings();
        // 将设置取出并转为字符串
        return JsonUtils.objectCovertToJsonAuth(settings);
    }
}
