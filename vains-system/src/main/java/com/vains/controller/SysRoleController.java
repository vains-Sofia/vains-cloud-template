package com.vains.controller;

import com.vains.entity.SysRole;
import com.vains.model.Result;
import com.vains.model.request.AddRoleRequest;
import com.vains.model.request.UpdateRoleRequest;
import com.vains.service.ISysRoleService;
import com.vains.util.SecurityUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 系统角色表 前端控制器
 * </p>
 *
 * @author vains
 * @since 2022-03-25
 */
@RestController
@Api(tags = "角色接口")
@RequiredArgsConstructor
@RequestMapping("/sysRole")
public class SysRoleController {

    private final ISysRoleService iSysRoleService;

    @ApiOperation("添加角色")
    @PostMapping("/addRole")
    public Result<Boolean> addRole(@RequestBody @Validated AddRoleRequest addRole) {
        SysRole sysRole = new SysRole();
        BeanUtils.copyProperties(addRole, sysRole);
        sysRole.setDeleted(Boolean.FALSE);
        sysRole.setCreateUserId(SecurityUtils.getUserId());
        boolean result = iSysRoleService.save(sysRole);
        return Result.success(result);
    }

    @ApiOperation("删除角色")
    @DeleteMapping("/deleteRole/{id}")
    public Result<Boolean> deleteRole(@PathVariable Integer id) {
        boolean result = iSysRoleService.removeById(id);
        return Result.success(result);
    }

    @ApiOperation("修改角色")
    @PutMapping("/updateRole")
    public Result<Boolean> updateRole(@RequestBody @Validated UpdateRoleRequest updateRole) {
        SysRole sysRole = new SysRole();
        BeanUtils.copyProperties(updateRole, sysRole);
        boolean result = iSysRoleService.updateById(sysRole);
        return Result.success(result);
    }

}
