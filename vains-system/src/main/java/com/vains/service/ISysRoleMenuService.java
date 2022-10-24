package com.vains.service;

import com.vains.entity.SysRoleMenu;
import com.baomidou.mybatisplus.extension.service.IService;
import com.vains.model.request.BatchResetRoleMenuRequest;

/**
 * <p>
 * 角色菜单多对多关联表 服务类
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
public interface ISysRoleMenuService extends IService<SysRoleMenu> {

    /**
     * 重置角色所拥有的资源菜单
     * @param batchResetRoleMenu 角色id和新拥有的资源菜单的id
     * @return 是否重置成功
     */
    boolean batchResetRoleMenu(BatchResetRoleMenuRequest batchResetRoleMenu);
}
