package com.vains.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.vains.entity.SysUserRole;
import com.vains.mapper.SysUserRoleMapper;
import com.vains.model.request.BatchResetUserRoleRequest;
import com.vains.service.ISysUserRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
@Service
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRoleMapper, SysUserRole> implements ISysUserRoleService {


    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean batchResetUserRole(BatchResetUserRoleRequest batchResetUserRole) {
        // 清除原有关联关系
        LambdaQueryWrapper<SysUserRole> wrapper = Wrappers.lambdaQuery(SysUserRole.class)
                .eq(SysUserRole::getUserId, batchResetUserRole.getUserId());
        this.remove(wrapper);
        // 创建新的关联关系
        List<SysUserRole> userRoles = batchResetUserRole.getRolesId()
                .stream()
                .map(roleId -> new SysUserRole(null, roleId, batchResetUserRole.getUserId()))
                .collect(Collectors.toList());
        return this.saveBatch(userRoles);
    }
}
