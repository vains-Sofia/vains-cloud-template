package com.vains.client;

import com.vains.constant.ApplicationNameConstants;
import com.vains.constant.Constants;
import com.vains.entity.SysUser;
import com.vains.model.Result;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;

/**
 * 远程调用用户接口
 *
 * @author vains
 */
@FeignClient(ApplicationNameConstants.SYSTEM_NAME)
public interface SystemClient {

    /**
     * 根据用户账号获取用户信息
     * @param username 用户账号
     * @param headerValue 请求头的值 任意值都会生效
     * @return 用户信息
     */
    @GetMapping("/user/getByUsername/{username}")
    Result<SysUser> getByUsername(@PathVariable String username, @RequestHeader(Constants.IS_FEIGN_CLIENT_REQUEST) Boolean headerValue);

}
