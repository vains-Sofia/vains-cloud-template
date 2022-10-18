package com.vains.controller;

import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.vains.constant.JwtClaimsConstants;
import com.vains.entity.SysMenu;
import com.vains.entity.SysRoleMenu;
import com.vains.entity.SysUserRole;
import com.vains.model.Result;
import com.vains.service.ISysMenuService;
import com.vains.service.ISysRoleMenuService;
import com.vains.service.ISysUserRoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * <p>
 * 系统菜单表 前端控制器
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
@RestController
@Api(tags = "菜单接口")
@RequiredArgsConstructor
@RequestMapping("/sysMenu")
public class SysMenuController {

    private final ISysMenuService sysMenuService;

    private final ISysRoleMenuService sysRoleMenuService;

    private final ISysUserRoleService sysUserRoleService;

    @GetMapping("/getMenusByUser")
    @ApiOperation("当前登录用户的菜单列表")
    public Result<List<SysMenu>> getMenusByUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object authenticationPrincipal = authentication.getPrincipal();
        // 从token中获取用户ID
        if (authenticationPrincipal instanceof Jwt) {
            Jwt jwt = (Jwt) authenticationPrincipal;
            Integer userId = Integer.parseInt(jwt.getClaimAsString(JwtClaimsConstants.USER_ID));
            // 通过用户角色关联表查询对应的角色
            List<SysUserRole> userRoles = sysUserRoleService.list(Wrappers.lambdaQuery(SysUserRole.class).eq(SysUserRole::getUserId, userId));
            List<String> rolesId = Optional.ofNullable(userRoles).orElse(Collections.emptyList()).stream().map(SysUserRole::getRoleId).collect(Collectors.toList());
            if (ObjectUtils.isEmpty(rolesId)) {
                return Result.success(Collections.emptyList());
            }
            // 通过角色菜单关联表查出对应的菜单
            List<SysRoleMenu> roleMenus = sysRoleMenuService.list(Wrappers.lambdaQuery(SysRoleMenu.class).in(SysRoleMenu::getRoleId, rolesId));
            List<Integer> menusId = Optional.ofNullable(roleMenus).orElse(Collections.emptyList()).stream().map(SysRoleMenu::getMenuId).collect(Collectors.toList());
            if (ObjectUtils.isEmpty(menusId)) {
                return Result.success(Collections.emptyList());
            }
            // 根据菜单ID查出菜单
            List<SysMenu> menus = sysMenuService.listByIds(menusId);
            return Result.success(menus);
        }
        return Result.success(Collections.emptyList());
    }

}
