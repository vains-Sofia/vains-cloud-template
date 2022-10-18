package com.vains.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import javax.validation.constraints.NotEmpty;

import java.util.Set;

/**
* 更新客户端入参
*
* @author vains
*/
@Data
@ApiModel(value = "更新客户端Scopes入参", description = "更新客户端Scopes入参")
public class UpdateClientScopesRequest {

    @NotEmpty
    @ApiModelProperty("客户端主键Id")
    private String id;

    @NotEmpty
    @ApiModelProperty("客户端新的sopes")
    private Set<String> scopes;

}