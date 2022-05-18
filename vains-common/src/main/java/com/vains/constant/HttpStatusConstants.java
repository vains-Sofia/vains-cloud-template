package com.vains.constant;

/**
 * 请求状态码常量类
 *
 * @author vains
 * @date 2021/3/10 14:31
 */
public final class HttpStatusConstants {

    /**
     * 请求成功
     */
    public static final Integer SUCCESS = 200;

    /**
     * 永久移动。请求的资源已被永久的移动到新URI，返回信息会包括新的URI
     */
    public static final Integer MOVED = 301;

    /**
     * 客户端请求的语法错误，服务器无法理解 请求参数错误
     */
    public static final Integer BAD_REQUEST = 400;

    /**
     * 请求要求身份验证。
     */
    public static final Integer UNAUTHORIZED = 401;

    /**
     *  服务器拒绝请求。
     */
    public static final Integer FORBIDDEN = 403;

    /**
     *  客户端请求地址不存在。
     */
    public static final Integer NOT_FOUND = 404;

    /**
     *  服务器内部错误。
     */
    public static final Integer SERVER_ERROR = 500;

    /**
     *  服务器作为网关或代理，从上游服务器收到无效响应。
     */
    public static final Integer BAD_GATEWAY = 502;

    /**
     *  服务器目前无法使用。
     */
    public static final Integer SERVICE_UNAVAILABLE = 503;

    /**
     *  网关超时。
     */
    public static final Integer GATEWAY_TIMEOUT = 504;

}