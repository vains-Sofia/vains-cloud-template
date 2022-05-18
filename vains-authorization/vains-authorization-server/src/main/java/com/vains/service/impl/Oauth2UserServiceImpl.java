package com.vains.service.impl;

import com.vains.client.SystemClient;
import com.vains.entity.SysUser;
import com.vains.model.Result;
import lombok.AllArgsConstructor;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author vains
 * @since 2022-01-10
 */
@Service
@AllArgsConstructor
public class Oauth2UserServiceImpl implements UserDetailsService {

    private final SystemClient systemClient;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Result<SysUser> detailsResult = systemClient.getByUsername(username, Boolean.TRUE);
        // TODO 添加一系列判断
        if (detailsResult == null) {
            throw new AuthenticationServiceException("用户信息获取失败，请稍后重试！");
        }
        if (detailsResult.getData() == null) {
            throw new AuthenticationServiceException(detailsResult.getMessage());
        }
        return detailsResult.getData();
    }
}
