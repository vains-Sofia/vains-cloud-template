package com.vains.config.swagger;

import com.vains.properties.ApplicationNameProperties;
import lombok.AllArgsConstructor;
import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import springfox.documentation.swagger.web.SwaggerResource;
import springfox.documentation.swagger.web.SwaggerResourcesProvider;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * swagger3接口文档配置
 *
 * @author vains
 */
@Primary
@Configuration
@AllArgsConstructor
public class SwaggerProvider implements SwaggerResourcesProvider {

    /**
     * swagger3默认的url后缀
     *  要使用ui的话 改成v2 不然会出bug  比如有的地方 没有输入框
     */
    public static final String SWAGGER3URL = "/v3/api-docs";

    /**
     * 网关路由
     */
    private final RouteLocator routeLocator;

    /**
     * 网关应用名称
     */
    private ApplicationNameProperties applicationNameProperties;

    /**
     * 对于gateway来说这块比较重要 让swagger能找到对应的服务
     *
     * @return 服务列表
     */
    @Override
    public List<SwaggerResource> get() {
        List<SwaggerResource> resources = new ArrayList<>();
        List<String> routeHosts = new ArrayList<>();
        // 获取所有可用的host：serviceId
        routeLocator.getRoutes().filter(route -> route.getUri().getHost() != null)
                .filter(route -> !applicationNameProperties.getName().equals(route.getUri().getHost()))
                .subscribe(route -> routeHosts.add(route.getId()));

        // 记录已经添加过的server
        Set<String> added = new HashSet<>();
        routeHosts.forEach(instance -> {
            // 拼接url
            String url = "/" + instance.toLowerCase() + SWAGGER3URL;
            if (!added.contains(url)) {
                added.add(url);
                SwaggerResource swaggerResource = new SwaggerResource();
                swaggerResource.setUrl(url);
                swaggerResource.setName(instance);
                resources.add(swaggerResource);
            }
        });
        return resources;
    }

}