package com.vains.controller;

import com.vains.enums.BaseEnum;
import com.vains.enums.TestEnum;
import com.vains.model.request.TestEnumRequest;
import io.swagger.annotations.Api;
import io.swagger.annotations.Api;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@RestController
@Api(tags = "测试接口")
@RequestMapping("/test")
public class TestController {

    @GetMapping("/test01")
    @ApiOperation("测试接口,需要客户端拥有user.userInfo的scope")
    @PreAuthorize("hasAuthority('SCOPE_user.userInfo')")
    public String test01(Principal principal) {
        System.out.println(principal);
        return "Hello Jenkins automated build deployment.";
    }

    @GetMapping("/test02")
    @ApiOperation("测试接口,需要用户拥有/system的权限")
    @PreAuthorize("hasAuthority('/system')")
    public String test02() {
        return "Welcome to jenkins automated build deployment.";
    }

    @PostMapping("/test03")
    @ApiOperation("测试枚举入参接口")
    public TestEnumRequest test03(@RequestBody @Validated TestEnumRequest request) {
        System.out.println(request);
        return request;
    }

    @PostMapping("/test04")
    @ApiOperation("测试枚举入参接口")
    public TestEnumRequest test04(@Validated TestEnumRequest request) {
        System.out.println(request);
        return request;
    }

}
