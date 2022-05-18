package com.vains.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 全局分页入参
 *
 * @author vains
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(value = "分页参数入参", description = "分页参数入参")
public class Pagination {

    @ApiModelProperty("每页行数")
    protected Long size;

    @ApiModelProperty("当前页")
    protected Long current;

}
