package com.vains.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.security.oauth2.core.endpoint.OAuth2ParameterNames;
import org.springframework.security.oauth2.server.authorization.OAuth2AuthorizationConsent;
import org.springframework.security.oauth2.server.authorization.OAuth2AuthorizationConsentService;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClient;
import org.springframework.security.oauth2.server.authorization.client.RegisteredClientRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.util.*;

/**
 * 自定义授权类
 * @author vains
 */
@Controller
@AllArgsConstructor
@Api(tags = "自定义授权页面")
public class AuthorizationConsentController {

	private final RegisteredClientRepository registeredClientRepository;

	private final OAuth2AuthorizationConsentService authorizationConsentService;

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@ApiOperation("跳转至确认授权页")
	@GetMapping(value = "/oauth2/consent")
	public String consent(Principal principal, Model model,
						  @RequestParam(OAuth2ParameterNames.CLIENT_ID) String clientId,
						  @RequestParam(OAuth2ParameterNames.SCOPE) String scope,
						  @RequestParam(OAuth2ParameterNames.STATE) String state) {
		// Remove scopes that were already approved
		Set<String> scopesToApprove = new HashSet<>();
		Set<String> previouslyApprovedScopes = new HashSet<>();
		Set<String> authorizedScopes;
		RegisteredClient registeredClient = this.registeredClientRepository.findByClientId(clientId);
		if (registeredClient != null) {
			OAuth2AuthorizationConsent currentAuthorizationConsent =
					this.authorizationConsentService.findById(registeredClient.getId(), principal.getName());

			if (currentAuthorizationConsent != null) {
				authorizedScopes = currentAuthorizationConsent.getScopes();
			} else {
				authorizedScopes = Collections.emptySet();
			}
		} else {
			authorizedScopes = Collections.emptySet();
		}
		String delimiter = " ";
		for (String requestedScope : StringUtils.delimitedListToStringArray(scope, delimiter)) {
			if (authorizedScopes.contains(requestedScope)) {
				previouslyApprovedScopes.add(requestedScope);
			} else {
				scopesToApprove.add(requestedScope);
			}
		}

		model.addAttribute("clientId", clientId);
		model.addAttribute("state", state);
		model.addAttribute("scopes", withDescription(scopesToApprove));
		model.addAttribute("previouslyApprovedScopes", withDescription(previouslyApprovedScopes));
		model.addAttribute("principalName", principal.getName());

		return "consent";
	}

	private static Set<ScopeWithDescription> withDescription(Set<String> scopes) {
		Set<ScopeWithDescription> scopeWithDescriptions = new HashSet<>();
		for (String scope : scopes) {
			scopeWithDescriptions.add(new ScopeWithDescription(scope));

		}
		return scopeWithDescriptions;
	}

	@Data
	public static class ScopeWithDescription {
		private static final String DEFAULT_DESCRIPTION = "UNKNOWN SCOPE - We cannot provide information about this permission, use caution when granting this.";
		private static final Map<String, String> SCOPE_DESCRIPTIONS = new HashMap<>();
		static {
			SCOPE_DESCRIPTIONS.put(
					"message.read",
					"This application will be able to read your message."
			);
			SCOPE_DESCRIPTIONS.put(
					"message.write",
					"This application will be able to add new messages. It will also be able to edit and delete existing messages."
			);
			SCOPE_DESCRIPTIONS.put(
					"other.scope",
					"This is another scope example of a scope description."
			);
		}

		public final String scope;
		public final String description;

		ScopeWithDescription(String scope) {
			this.scope = scope;
			this.description = SCOPE_DESCRIPTIONS.getOrDefault(scope, DEFAULT_DESCRIPTION);
		}
	}
}