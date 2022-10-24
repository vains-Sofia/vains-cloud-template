package com.vains.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.vains.entity.SysRoleMenu;
import com.vains.model.Result;
import com.vains.model.request.BatchResetRoleMenuRequest;
import com.vains.service.ISysRoleMenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 角色菜单多对多关联表 前端控制器
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
@RestController
@RequiredArgsConstructor
@Api(tags = "角色菜单关联接口")
@RequestMapping("/roleMenu")
public class SysRoleMenuController {

    private final ISysRoleMenuService iSysRoleMenuService;

    @PutMapping("/batchResetRoleMenu")
    @ApiOperation("重置角色所拥有的资源菜单")
    public Result<Boolean> batchResetRoleMenu(@RequestBody @Validated BatchResetRoleMenuRequest batchResetRoleMenu) {

        return Result.success(iSysRoleMenuService.batchResetRoleMenu(batchResetRoleMenu));
    }

    @GetMapping("/findRoleMenus/{roleId}")
    @ApiOperation("根据角色id获取对应的资源菜单信息")
    public Result<List<Integer>> findRoleMenus(@PathVariable Integer roleId) {
        LambdaQueryWrapper<SysRoleMenu> wrapper = Wrappers.lambdaQuery(SysRoleMenu.class)
                .eq(SysRoleMenu::getRoleId, roleId);
        List<SysRoleMenu> roleMenus = iSysRoleMenuService.list(wrapper);
        List<Integer> menusId = roleMenus.stream().map(SysRoleMenu::getMenuId).collect(Collectors.toList());
        return Result.success(menusId);
    }

}
