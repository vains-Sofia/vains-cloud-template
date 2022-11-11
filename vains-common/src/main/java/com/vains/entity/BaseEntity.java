package com.vains.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * 数据库对应实体基类
 *
 * @author vains
 */
@Data
@JsonIgnoreProperties(ignoreUnknown = true)
@ApiModel(value = "数据库对应实体基类", description = "数据库对应实体基类")
public class BaseEntity implements Serializable {

    @ApiModelProperty("是否已删除 0-未删除，1-已删除")
    private Boolean deleted;

    /**
     * 创建时间
     */
    @ApiModelProperty("创建时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    /**
     * 创建人
     */
    @ApiModelProperty("创建人")
    private Integer createUserId;

}