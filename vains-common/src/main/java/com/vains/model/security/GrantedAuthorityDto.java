package com.vains.model.security;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;

/**
 * 自定义权限
 *
 * @author vains
 */
@Data
@JsonSerialize
@NoArgsConstructor
@AllArgsConstructor
public class GrantedAuthorityDto implements GrantedAuthority {

    private String authority;

    @Override
    public String getAuthority() {
        return authority;
    }
}
