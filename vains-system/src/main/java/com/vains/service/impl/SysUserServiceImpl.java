package com.vains.service.impl;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vains.entity.SysMenu;
import com.vains.entity.SysRoleMenu;
import com.vains.entity.SysUser;
import com.vains.entity.SysUserRole;
import com.vains.mapper.*;
import com.vains.model.security.GrantedAuthorityDto;
import com.vains.service.ISysUserService;
import lombok.AllArgsConstructor;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

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
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements ISysUserService {

    private final SysMenuMapper sysMenuMapper;

    private final SysUserRoleMapper sysUserRoleMapper;

    private final SysRoleMenuMapper sysRoleMenuMapper;

    @Override
    public SysUser loadUserByUsername(String username) throws UsernameNotFoundException {
        SysUser sysUser = baseMapper.selectOne(Wrappers.lambdaQuery(SysUser.class).eq(SysUser::getUsername, username));
        if (sysUser == null) {
            throw new UsernameNotFoundException("账号不存在");
        }
        // 通过用户角色关联表查询对应的角色
        List<SysUserRole> userRoles = sysUserRoleMapper.selectList(Wrappers.lambdaQuery(SysUserRole.class).eq(SysUserRole::getUserId, sysUser.getId()));
        List<String> rolesId = Optional.ofNullable(userRoles).orElse(Collections.emptyList()).stream().map(SysUserRole::getRoleId).collect(Collectors.toList());
        if (ObjectUtils.isEmpty(rolesId)) {
            return sysUser;
        }
        // 通过角色菜单关联表查出对应的菜单
        List<SysRoleMenu> roleMenus = sysRoleMenuMapper.selectList(Wrappers.lambdaQuery(SysRoleMenu.class).in(SysRoleMenu::getRoleId, rolesId));
        List<Integer> menusId = Optional.ofNullable(roleMenus).orElse(Collections.emptyList()).stream().map(SysRoleMenu::getMenuId).collect(Collectors.toList());
        if (ObjectUtils.isEmpty(menusId)) {
            return sysUser;
        }
        // 根据菜单ID查出菜单
        List<SysMenu> menus = sysMenuMapper.selectBatchIds(menusId);
        Set<GrantedAuthorityDto> authorities = Optional.ofNullable(menus).orElse(Collections.emptyList()).stream().map(SysMenu::getUrl).map(GrantedAuthorityDto::new).collect(Collectors.toSet());
        sysUser.setAuthorities(authorities);
        return sysUser;
    }
}
