package springfox.documentation.oas.web;

import io.swagger.v3.oas.models.servers.Server;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.springframework.util.ObjectUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

import static org.slf4j.LoggerFactory.getLogger;

/**
 * 用该类替换框架中的类
 *
 * @author vains
 */
@Slf4j
public class SpecGeneration {

    private static final String HEADER_NAME = "X-Forwarded-Prefix";
    private static final Logger LOGGER = getLogger(SpecGeneration.class);
    public static final String OPEN_API_SPECIFICATION_PATH
            = "${springfox.documentation.open-api.v3.path:/v3/api-docs}";
    protected static final String HAL_MEDIA_TYPE = "application/hal+json";

    private SpecGeneration() {
        throw new UnsupportedOperationException();
    }

    /**
     * 创建一个默认的 swagger 的server
     *
     * @param requestPrefix /v3/api-docs
     * @param requestUrl    请求的url
     * @return Server
     */
    public static Server inferredServer(String requestPrefix, String requestUrl) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String serverUrl = requestUrl.replace(requestPrefix, "");
        String header = null;
        try {
            URI url = new URI(requestUrl);
            serverUrl = String.format("%s://%s:%s", url.getScheme(), url.getHost(), url.getPort());
            header = request.getHeader(HEADER_NAME);
            if (!ObjectUtils.isEmpty(header)) {
                log.info("当前的服务为：{}", header);
                serverUrl += header;
            }
        } catch (URISyntaxException e) {
            LOGGER.error("Unable to parse request url:" + requestUrl);
        }
        String description = "Inferred Url";
        if (!ObjectUtils.isEmpty(header)) {
            description += " For " + header.substring(1);
        }
        return new Server()
                .url(serverUrl)
                .description(description);
    }

    public static String decode(String requestUri) {
        try {
            return URLDecoder.decode(requestUri, StandardCharsets.UTF_8.toString());
        } catch (UnsupportedEncodingException e) {
            return requestUri;
        }
    }
}