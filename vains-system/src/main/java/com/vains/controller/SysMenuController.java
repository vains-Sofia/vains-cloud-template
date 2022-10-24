package com.vains.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.vains.entity.SysMenu;
import com.vains.entity.SysRoleMenu;
import com.vains.entity.SysUserRole;
import com.vains.model.Result;
import com.vains.model.request.FindMenuPageRequest;
import com.vains.model.request.SaveMenuRequest;
import com.vains.model.request.UpdateMenuRequest;
import com.vains.service.ISysMenuService;
import com.vains.service.ISysRoleMenuService;
import com.vains.service.ISysUserRoleService;
import com.vains.util.SecurityUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

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
        Integer userId = SecurityUtils.getUserId();
        // 通过用户角色关联表查询对应的角色
        List<SysUserRole> userRoles = sysUserRoleService.list(Wrappers.lambdaQuery(SysUserRole.class).eq(SysUserRole::getUserId, userId));
        List<Integer> rolesId = Optional.ofNullable(userRoles).orElse(Collections.emptyList()).stream().map(SysUserRole::getRoleId).collect(Collectors.toList());
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

    @PostMapping("/insertMenu")
    @ApiOperation("添加资源菜单")
    public Result<Boolean> insertMenu(@RequestBody @Validated SaveMenuRequest saveMenu) {
        SysMenu menu = new SysMenu();
        BeanUtils.copyProperties(saveMenu, menu);
        menu.setDeleted(Boolean.FALSE);
        menu.setCreateUserId(SecurityUtils.getUserId());
        return Result.success(sysMenuService.save(menu));
    }

    @PutMapping("/updateMenu")
    @ApiOperation("修改资源菜单")
    public Result<Boolean> updateMenu(@RequestBody @Validated UpdateMenuRequest updateMenu) {
        SysMenu menu = new SysMenu();
        BeanUtils.copyProperties(updateMenu, menu);
        return Result.success(sysMenuService.updateById(menu));
    }

    @ApiOperation("根据id删除资源菜单")
    @DeleteMapping("/deleteMenu/{id}")
    public Result<Boolean> deleteMenu(@PathVariable Integer id) {

        return Result.success(sysMenuService.removeById(id));
    }

    @GetMapping("/findMenuPage")
    @ApiOperation("分页查询资源菜单列表")
    public Result<IPage<SysMenu>> findMenuPage(@Validated FindMenuPageRequest findMenuPage) {
        IPage<SysMenu> iPage = new Page<>(findMenuPage.getCurrent(), findMenuPage.getSize());
        LambdaQueryWrapper<SysMenu> wrapper = Wrappers.lambdaQuery(SysMenu.class)
                .like(!ObjectUtils.isEmpty(findMenuPage.getName()), SysMenu::getName, findMenuPage.getName())
                .eq(!ObjectUtils.isEmpty(findMenuPage.getType()), SysMenu::getType, findMenuPage.getType())
                .orderByAsc(SysMenu::getSort);
        sysMenuService.page(iPage, wrapper);
        return Result.success(iPage);
    }

    @ApiOperation("查询资源菜单详情")
    @GetMapping("/findDetail/{id}")
    public Result<SysMenu> findDetail(@PathVariable Integer id) {

        return Result.success(sysMenuService.getById(id));
    }

}
