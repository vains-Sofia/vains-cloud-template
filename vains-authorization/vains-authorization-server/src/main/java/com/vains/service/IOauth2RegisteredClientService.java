package com.vains.service;

import com.vains.entity.Oauth2RegisteredClient;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vains.model.request.RegisterClientRequest;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author vains
 * @since 2022-06-12
 */
public interface IOauth2RegisteredClientService extends IService<Oauth2RegisteredClient> {

    /**
     * 注册客户端
     * @param clientRequest 客户端数据
     */
    void register(RegisterClientRequest clientRequest);
}
