package com.vains.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.vains.entity.SysRoleMenu;
import com.vains.mapper.SysRoleMenuMapper;
import com.vains.model.request.BatchResetRoleMenuRequest;
import com.vains.service.ISysRoleMenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 角色菜单多对多关联表 服务实现类
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
@Service
public class SysRoleMenuServiceImpl extends ServiceImpl<SysRoleMenuMapper, SysRoleMenu> implements ISysRoleMenuService {

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean batchResetRoleMenu(BatchResetRoleMenuRequest batchResetRoleMenu) {
        // 清除原有关联关系
        LambdaQueryWrapper<SysRoleMenu> wrapper = Wrappers.lambdaQuery(SysRoleMenu.class)
                .eq(SysRoleMenu::getRoleId, batchResetRoleMenu.getRoleId());
        this.remove(wrapper);
        List<SysRoleMenu> roleMenus = batchResetRoleMenu.getMenusId()
                .stream()
                .map(menuId -> new SysRoleMenu(null, batchResetRoleMenu.getRoleId(), menuId))
                .collect(Collectors.toList());
        return this.saveBatch(roleMenus);
    }
}
