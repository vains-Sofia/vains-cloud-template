package com.vains.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 查询客户端列表入参
 *
 * @author vains
 */
@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value = "查询客户端列表入参", description = "查询客户端列表入参")
public class FindClientListRequest extends Pagination {

    @ApiModelProperty("客户端ID")
    private String clientId;

    @ApiModelProperty("客户端名称")
    private String clientName;

}
