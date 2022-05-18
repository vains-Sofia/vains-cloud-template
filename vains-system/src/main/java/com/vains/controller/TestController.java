package com.vains.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping("/test01")
    @PreAuthorize("hasAuthority('SCOPE_user.userInfo')")
    public String test01(Principal principal) {
        System.out.println(principal);
        return "Hello Jenkins automated build deployment.";
    }

    @GetMapping("/test02")
    @PreAuthorize("hasAuthority('/system')")
    public String test02() {
        return "Welcome to jenkins automated build deployment.";
    }

}
