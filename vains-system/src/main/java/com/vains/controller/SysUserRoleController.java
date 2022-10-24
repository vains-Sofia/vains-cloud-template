package com.vains.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.vains.entity.SysUserRole;
import com.vains.model.Result;
import com.vains.model.request.BatchResetUserRoleRequest;
import com.vains.service.ISysUserRoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
@RestController
@RequiredArgsConstructor
@Api(tags = "用户角色关联接口")
@RequestMapping("/userRole")
public class SysUserRoleController {

    private final ISysUserRoleService iSysUserRoleService;

    @PutMapping("/batchResetUserRole")
    @ApiOperation("重置用户的角色信息")
    public Result<Boolean> batchResetUserRole(@RequestBody @Validated BatchResetUserRoleRequest batchResetUserRole) {

        return Result.success(iSysUserRoleService.batchResetUserRole(batchResetUserRole));
    }

    @GetMapping("/findUserRoles/{userId}")
    @ApiOperation("根据用户id获取对应的角色信息")
    public Result<List<Integer>> findUserRoles(@PathVariable Integer userId) {
        LambdaQueryWrapper<SysUserRole> wrapper = Wrappers.lambdaQuery(SysUserRole.class)
                .eq(SysUserRole::getUserId, userId);
        List<SysUserRole> userRoles = iSysUserRoleService.list(wrapper);
        List<Integer> rolesId = userRoles.stream().map(SysUserRole::getRoleId).collect(Collectors.toList());
        return Result.success(rolesId);
    }

}
