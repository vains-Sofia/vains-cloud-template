//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.vains.exception;

import com.vains.model.Result;
import org.springframework.boot.autoconfigure.web.ErrorProperties;
import org.springframework.boot.autoconfigure.web.WebProperties.Resources;
import org.springframework.boot.autoconfigure.web.reactive.error.DefaultErrorWebExceptionHandler;
import org.springframework.boot.web.error.ErrorAttributeOptions;
import org.springframework.boot.web.error.ErrorAttributeOptions.Include;
import org.springframework.boot.web.reactive.error.ErrorAttributes;
import org.springframework.cloud.gateway.route.Route;
import org.springframework.cloud.gateway.support.NotFoundException;
import org.springframework.cloud.gateway.support.ServerWebExchangeUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.http.HttpStatus;
import org.springframework.http.InvalidMediaTypeException;
import org.springframework.http.MediaType;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.server.RequestPredicate;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.ServerRequest;
import org.springframework.web.reactive.function.server.ServerResponse;
import org.springframework.web.server.ResponseStatusException;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.nio.charset.StandardCharsets;
import java.util.*;

import static org.springframework.web.reactive.function.server.RequestPredicates.all;
import static org.springframework.web.reactive.function.server.RouterFunctions.route;

/**
 * 网关全局异常拦截器
 * @author vains
 */
public class DefaultGatewayHandlerAdvice extends DefaultErrorWebExceptionHandler {

    private static final MediaType TEXT_HTML_UTF8 = new MediaType("text", "html", StandardCharsets.UTF_8);

    private static final Map<HttpStatus.Series, String> SERIES_VIEWS;

    static {
        Map<HttpStatus.Series, String> views = new EnumMap<>(HttpStatus.Series.class);
        views.put(HttpStatus.Series.CLIENT_ERROR, "4xx");
        views.put(HttpStatus.Series.SERVER_ERROR, "5xx");
        SERIES_VIEWS = Collections.unmodifiableMap(views);
    }

    private final ErrorProperties errorProperties;

    public DefaultGatewayHandlerAdvice(ErrorAttributes errorAttributes, Resources resources, ErrorProperties error, ApplicationContext applicationContext) {
        super(errorAttributes, resources, error, applicationContext);
        this.errorProperties = error;
    }

    @Override
    protected RouterFunction<ServerResponse> getRoutingFunction(ErrorAttributes errorAttributes) {
        return route(acceptsTextHtml(), this::renderErrorView).andRoute(all(), this::renderErrorResponse);
    }

    /**
     * Render the error information as an HTML view.
     * @param request the current request
     * @return a {@code Publisher} of the HTTP response
     */
    @Override
    protected Mono<ServerResponse> renderErrorView(ServerRequest request) {
        Map<String, Object> error = getErrorAttributes(request, getErrorAttributeOptions(request, MediaType.TEXT_HTML));
        int errorStatus = getHttpStatus(error);
        ServerResponse.BodyBuilder responseBody = ServerResponse.status(errorStatus).contentType(TEXT_HTML_UTF8);
        return Flux.just(getData1(errorStatus).toArray(new String[] {}))
                .flatMap((viewName) -> renderErrorView(viewName, responseBody, error))
                .switchIfEmpty(this.errorProperties.getWhitelabel().isEnabled()
                        ? renderDefaultErrorView(responseBody, error) : Mono.error(getError(request)))
                .next();
    }

    private List<String> getData1(int errorStatus) {
        List<String> data = new ArrayList<>();
        data.add("error/" + errorStatus);
        HttpStatus.Series series = HttpStatus.Series.resolve(errorStatus);
        if (series != null) {
            data.add("error/" + SERIES_VIEWS.get(series));
        }
        data.add("error/error");
        return data;
    }

    /**
     * Render the error information as a JSON payload.
     * @param request the current request
     * @return a {@code Publisher} of the HTTP response
     */
    @Override
    protected Mono<ServerResponse> renderErrorResponse(ServerRequest request) {
        Throwable throwable = this.getError(request);
        Map<String, Object> error = this.getErrorAttributes(request, this.getErrorAttributeOptions(request, MediaType.ALL));
        Route route = (Route)request.exchange().getAttributes().get(ServerWebExchangeUtils.GATEWAY_ROUTE_ATTR);
        String routeId = route == null ? "" : route.getId();
        String body;
        if (throwable instanceof NotFoundException) {
            body = "Service [" + routeId + "] Unavailable: " + ((NotFoundException)throwable).getReason();
        } else if (throwable instanceof ResponseStatusException) {
            ResponseStatusException responseStatusException = (ResponseStatusException)throwable;
            body = "Request path [" + error.get("path") + "] failed: " + responseStatusException.getMessage();
        } else {
            body = "Internal Server Error";
        }

        int httpStatus = this.getHttpStatus(error);
        Result<Object> result = Result.error(httpStatus, body);
        return ServerResponse.status(httpStatus).contentType(MediaType.APPLICATION_JSON).body(BodyInserters.fromValue(result));
    }

    @Override
    protected ErrorAttributeOptions getErrorAttributeOptions(ServerRequest request, MediaType mediaType) {
        ErrorAttributeOptions options = ErrorAttributeOptions.defaults();
        if (this.errorProperties.isIncludeException()) {
            options = options.including(Include.EXCEPTION);
        }
        if (isIncludeStackTrace(request, mediaType)) {
            options = options.including(Include.STACK_TRACE);
        }
        if (isIncludeMessage(request, mediaType)) {
            options = options.including(Include.MESSAGE);
        }
        if (isIncludeBindingErrors(request, mediaType)) {
            options = options.including(Include.BINDING_ERRORS);
        }
        return options;
    }

    /**
     * Determine if the stacktrace attribute should be included.
     * @param request the source request
     * @param produces the media type produced (or {@code MediaType.ALL})
     * @return if the stacktrace attribute should be included
     */
    @Override
    protected boolean isIncludeStackTrace(ServerRequest request, MediaType produces) {
        switch (this.errorProperties.getIncludeStacktrace()) {
            case ALWAYS:
                return true;
            case ON_PARAM:
                return isTraceEnabled(request);
            default:
                return false;
        }
    }

    /**
     * Determine if the message attribute should be included.
     * @param request the source request
     * @param produces the media type produced (or {@code MediaType.ALL})
     * @return if the message attribute should be included
     */
    @Override
    protected boolean isIncludeMessage(ServerRequest request, MediaType produces) {
        switch (this.errorProperties.getIncludeMessage()) {
            case ALWAYS:
                return true;
            case ON_PARAM:
                return isMessageEnabled(request);
            default:
                return false;
        }
    }

    /**
     * Determine if the errors attribute should be included.
     * @param request the source request
     * @param produces the media type produced (or {@code MediaType.ALL})
     * @return if the errors attribute should be included
     */
    @Override
    protected boolean isIncludeBindingErrors(ServerRequest request, MediaType produces) {
        switch (this.errorProperties.getIncludeBindingErrors()) {
            case ALWAYS:
                return true;
            case ON_PARAM:
                return isBindingErrorsEnabled(request);
            default:
                return false;
        }
    }

    /**
     * Get the HTTP error status information from the error map.
     * @param errorAttributes the current error information
     * @return the error HTTP status
     */
    @Override
    protected int getHttpStatus(Map<String, Object> errorAttributes) {
        return (int) errorAttributes.get("status");
    }

    /**
     * Predicate that checks whether the current request explicitly support
     * {@code "text/html"} media type.
     * <p>
     * The "match-all" media type is not considered here.
     * @return the request predicate
     */
    @Override
    protected RequestPredicate acceptsTextHtml() {
        return serverRequest -> {
            try {
                List<MediaType> acceptedMediaTypes = serverRequest.headers().accept();
                acceptedMediaTypes.removeIf(MediaType.ALL::equalsTypeAndSubtype);
                MediaType.sortBySpecificityAndQuality(acceptedMediaTypes);
                return acceptedMediaTypes.stream().anyMatch(MediaType.TEXT_HTML::isCompatibleWith);
            }
            catch (InvalidMediaTypeException ex) {
                return false;
            }
        };
    }
}
