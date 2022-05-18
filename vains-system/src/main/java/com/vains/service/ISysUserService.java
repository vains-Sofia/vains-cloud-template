package com.vains.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vains.entity.SysUser;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author vains
 * @since 2022-01-10
 */
public interface ISysUserService extends IService<SysUser> {

    /**
     * 根据用户账号获取用户信息
     * @param username 用户账号
     * @return 用户信息
     */
    SysUser loadUserByUsername(String username);

}
