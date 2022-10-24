package com.vains.service;

import com.vains.entity.SysUserRole;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vains.model.request.BatchResetUserRoleRequest;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
public interface ISysUserRoleService extends IService<SysUserRole> {

    /**
    * 重置用户角色列表
    * @param batchResetUserRole 用户id与用户新的角色
    * @return 是否重置成功
    */
    boolean batchResetUserRole(BatchResetUserRoleRequest batchResetUserRole);

}
