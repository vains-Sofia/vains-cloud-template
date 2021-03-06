package com.vains.service.impl;

import com.vains.client.AuthorizationClient;
import com.vains.client.SystemClient;
import com.vains.constant.Constants;
import com.vains.entity.SysUser;
import com.vains.model.Result;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author vains
 * @since 2022-01-10
 */
@Service
@AllArgsConstructor
public class Oauth2UserServiceImpl implements UserDetailsService {

	private final SystemClient systemClient;

	private final AuthorizationClient authorizationClient;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String basicHeader = "Basic " + HttpHeaders.encodeBasicAuth("admin", Constants.DEFAULT_PASSWORD, StandardCharsets.UTF_8);
		Map<String, String> clientToken = this.authorizationClient.grantClientToken(basicHeader);
		Result<SysUser> detailsResult = this.systemClient.getByUsername(username, clientToken.get("token_type") + " " + clientToken.get("access_token"));
		if (detailsResult == null) {
			throw new AuthenticationServiceException("system服务调用失败");
		}
		if (detailsResult.getData() == null) {
			throw new UsernameNotFoundException(detailsResult.getMessage());
		}
		return detailsResult.getData();
	}
}
