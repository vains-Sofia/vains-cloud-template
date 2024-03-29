package com.vains.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.vains.entity.SysUser;
import com.vains.model.Result;
import com.vains.model.request.SaveUserRequest;
import com.vains.model.request.UpdateUserRequest;
import com.vains.model.vo.SysUserVo;
import com.vains.model.request.UserListRequest;
import com.vains.service.ISysUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * 用户接口
 *
 * @author vains
 */
@RestController
@Api(tags = "用户接口")
@RequestMapping("/user")
@RequiredArgsConstructor
public class SysUserController {

    private final ISysUserService sysUserService;

    private final PasswordEncoder passwordEncoder;

    @GetMapping("/getByUsername/{username}")
    public Result<SysUser> getByUsername(@PathVariable String username) {
        SysUser userDetails = sysUserService.loadUserByUsername(username);
        return Result.success(userDetails);
    }

    @ApiOperation("获取用户列表")
    @GetMapping("/getUserList")
    public Result<IPage<SysUserVo>> getUserList(@Validated UserListRequest user) {
        LambdaQueryWrapper<SysUser> wrapper = Wrappers.lambdaQuery(SysUser.class).like(ObjectUtils.isNotEmpty(user.getNickName()), SysUser::getNickName, user.getNickName())
                .like(ObjectUtils.isNotEmpty(user.getPhone()), SysUser::getPhone, user.getPhone())
                .like(ObjectUtils.isNotEmpty(user.getEmail()), SysUser::getEmail, user.getEmail())
                .like(ObjectUtils.isNotEmpty(user.getUsername()), SysUser::getUsername, user.getUsername());
        IPage<SysUser> iPage = new Page<>(user.getCurrent(), user.getSize());
        sysUserService.page(iPage, wrapper);
        IPage<SysUserVo> voPage = new Page<>();
        List<SysUser> records = iPage.getRecords();
        List<SysUserVo> voList = Optional.ofNullable(records).orElse(Collections.emptyList()).stream().map(u -> {
            SysUserVo vo = new SysUserVo();
            BeanUtils.copyProperties(u, vo);
            return vo;
        }).collect(Collectors.toList());
        voPage.setRecords(voList);
        voPage.setTotal(iPage.getTotal());
        return Result.success(voPage);
    }

    @ApiOperation("添加用户信息")
    @PostMapping("/insertUser")
    public Result<String> insertUser(@Validated @RequestBody SaveUserRequest saveUserRequest) {
        SysUser user = new SysUser();
        BeanUtils.copyProperties(saveUserRequest, user);
        user.setPassword(passwordEncoder.encode(saveUserRequest.getPassword()));
        sysUserService.save(user);
        return Result.success();
    }

    @ApiOperation("修改用户信息")
    @PutMapping("/updateUser")
    public Result<String> updateUser(@Validated @RequestBody UpdateUserRequest updateUserRequest) {
        SysUser user = new SysUser();
        BeanUtils.copyProperties(updateUserRequest, user);
        sysUserService.updateById(user);
        return Result.success();
    }

    @ApiOperation("删除用户信息")
    @DeleteMapping("/deleteUser/{id}")
    public Result<String> deleteUser(@PathVariable Integer id) {
        sysUserService.removeById(id);
        return Result.success();
    }

    @GetMapping("/getById/{id}")
    @ApiOperation("根据ID获取用户信息")
    public Result<SysUserVo> getById(@PathVariable Integer id) {
        SysUser user = sysUserService.getById(id);
        if (user == null) {
            return Result.error("用户不存在");
        }
        SysUserVo vo = new SysUserVo();
        BeanUtils.copyProperties(user, vo);
        return Result.success(vo);
    }

}
