package com.vains.config.swagger;

import com.vains.properties.SwaggerProperties;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import org.springframework.boot.actuate.autoconfigure.endpoint.web.CorsEndpointProperties;
import org.springframework.boot.actuate.autoconfigure.endpoint.web.WebEndpointProperties;
import org.springframework.boot.actuate.autoconfigure.web.server.ManagementPortType;
import org.springframework.boot.actuate.endpoint.ExposableEndpoint;
import org.springframework.boot.actuate.endpoint.web.*;
import org.springframework.boot.actuate.endpoint.web.annotation.ControllerEndpointsSupplier;
import org.springframework.boot.actuate.endpoint.web.annotation.ServletEndpointsSupplier;
import org.springframework.boot.actuate.endpoint.web.servlet.WebMvcEndpointHandlerMapping;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpHeaders;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.servlet.handler.MatchableHandlerMapping;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.oas.annotations.EnableOpenApi;
import springfox.documentation.service.*;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.contexts.SecurityContext;
import springfox.documentation.spring.web.plugins.Docket;

import javax.servlet.Filter;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * swagger3配置
 *
 * @author vains
 */
@EnableOpenApi
@Configuration
@AllArgsConstructor
@ConditionalOnClass(MatchableHandlerMapping.class)
public class SwaggerConfig {

    private final SwaggerProperties swaggerProperties;

    @Bean
    public Docket createRestApi() {
        OAuth2Scheme authorization = OAuth2Scheme.OAUTH2_PASSWORD_FLOW_BUILDER
                .name("Authorization")
                .tokenUrl(swaggerProperties.getOauth2().getAccessTokenUri())
                .authorizationUrl(swaggerProperties.getOauth2().getAuthorizeUri())
                .scopes(Arrays.asList(scopes()))
                .refreshUrl(swaggerProperties.getOauth2().getAccessTokenUri())
                .build();
        ArrayList<SecurityScheme> securitySchemes = new ArrayList<SecurityScheme>() {{
            add(authorization);
        }};
        return new Docket(DocumentationType.OAS_30)
            .enable(swaggerProperties.getEnable())
            .host(swaggerProperties.getTryHost())
            .select()
            .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
            .paths(PathSelectors.any())
            .build().apiInfo(
                new ApiInfoBuilder()
                    .title(swaggerProperties.getApplicationName() + " Restful Apis.")
                    .description(swaggerProperties.getApplicationDescription())
                    .version(swaggerProperties.getApplicationVersion())
                    .termsOfServiceUrl(swaggerProperties.getTryHost())
                    .build())
            // 忽略注解
            .ignoredParameterTypes(RequestHeader.class)
            // Bearer Token 加入 swagger
            /*.securitySchemes(Collections.singletonList(
                new ApiKey(HttpHeaders.AUTHORIZATION, HttpHeaders.AUTHORIZATION, "header")
            ))*/
            .securitySchemes(securitySchemes)
            .securityContexts(Collections.singletonList(
                SecurityContext.builder()
                    .securityReferences(Collections.singletonList(SecurityReference.builder()
                            .scopes(scopes())
                            .reference(HttpHeaders.AUTHORIZATION)
                            .build()))
                    .operationSelector(o ->
                            o.requestMappingPattern().matches("/.*")
                    )
                    .build()
                )
            );
    }

    /**
     * 客户端Scope
     * @return scopes
     */
    private AuthorizationScope[] scopes() {
        AuthorizationScope authorizationScope = new AuthorizationScope("all", "accessEverything");
        AuthorizationScope[] authorizationScopes = new AuthorizationScope[1];
        authorizationScopes[0] = authorizationScope;
        return authorizationScopes;
    }

    @Bean
    public WebMvcEndpointHandlerMapping webEndpointServletHandlerMapping(WebEndpointsSupplier webEndpointsSupplier, ServletEndpointsSupplier servletEndpointsSupplier, ControllerEndpointsSupplier controllerEndpointsSupplier, EndpointMediaTypes endpointMediaTypes, CorsEndpointProperties corsProperties, WebEndpointProperties webEndpointProperties, Environment environment) {
        List<ExposableEndpoint<?>> allEndpoints = new ArrayList<>();
        Collection<ExposableWebEndpoint> webEndpoints = webEndpointsSupplier.getEndpoints();
        allEndpoints.addAll(webEndpoints);
        allEndpoints.addAll(servletEndpointsSupplier.getEndpoints());
        allEndpoints.addAll(controllerEndpointsSupplier.getEndpoints());
        String basePath = webEndpointProperties.getBasePath();
        EndpointMapping endpointMapping = new EndpointMapping(basePath);
        boolean shouldRegisterLinksMapping = this.shouldRegisterLinksMapping(webEndpointProperties, environment, basePath);
        return new WebMvcEndpointHandlerMapping(endpointMapping, webEndpoints, endpointMediaTypes, corsProperties.toCorsConfiguration(), new EndpointLinksResolver(allEndpoints, basePath), shouldRegisterLinksMapping, null);
    }


    private boolean shouldRegisterLinksMapping(WebEndpointProperties webEndpointProperties, Environment environment, String basePath) {
        return webEndpointProperties.getDiscovery().isEnabled() && (StringUtils.hasText(basePath) || ManagementPortType.get(environment).equals(ManagementPortType.DIFFERENT));
    }

}