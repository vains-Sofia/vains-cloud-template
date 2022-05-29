package com.vains.model.vo;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.vains.enums.SexEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

/**
 * 用户数据页面载体
 *
 * @author vains
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(value = "用户数据", description = "用户数据页面载体")
public class SysUserVo {

    @ApiModelProperty("主键")
    private Integer id;

    @ApiModelProperty("账号")
    private String username;

    @ApiModelProperty("是否未过期")
    private Boolean nonExpired;

    @ApiModelProperty("是否未锁定")
    private Boolean nonLocked;

    @ApiModelProperty("是否删除")
    private Boolean deleted;

    @ApiModelProperty("创建时间")
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

}
