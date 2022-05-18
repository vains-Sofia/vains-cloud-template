package com.vains.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.vains.enums.SexEnum;
import com.vains.model.security.GrantedAuthorityDto;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Set;

/**
 * 统一认证用户表
 *
 * @author vains
 */
@Data
@JsonSerialize
@JsonIgnoreProperties(ignoreUnknown = true)
@ApiModel(value = "Oauth2User对象", description = "统一认证用户表")
public class SysUser implements UserDetails {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("账号")
    private String username;

    @ApiModelProperty("密码")
    private String password;

    @ApiModelProperty("是否未过期")
    private Boolean nonExpired;

    @ApiModelProperty("是否未锁定")
    private Boolean nonLocked;

    @ApiModelProperty("是否删除")
    private Boolean deleted;

    @TableField(exist = false)
    @ApiModelProperty("是否未过期")
    private Boolean accountNonExpired;

    @TableField(exist = false)
    @ApiModelProperty("是否未锁定")
    private Boolean accountNonLocked;

    @TableField(exist = false)
    @ApiModelProperty("创建时间")
    private Boolean credentialsNonExpired;

    @ApiModelProperty("创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty("用户昵称")
    private String nickName;

    @ApiModelProperty("用户手机号")
    private String phone;

    @ApiModelProperty("用户邮箱")
    private String email;

    @ApiModelProperty("头像")
    private String avatar;

    /**
     * 1-男 2-女 3-未知
     */
    @ApiModelProperty("0-男 1-女 2-未知")
    private SexEnum sex;

    /**
     * 修改时间
     */
    @ApiModelProperty("修改时间")
    private LocalDateTime updateTime;

    @ApiModelProperty("权限")
    @TableField(exist = false)
    private Set<GrantedAuthorityDto> authorities;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return nonExpired;
    }

    @Override
    public boolean isAccountNonLocked() {
        return nonLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return nonExpired;
    }

    @Override
    public boolean isEnabled() {
        return !deleted;
    }
}
