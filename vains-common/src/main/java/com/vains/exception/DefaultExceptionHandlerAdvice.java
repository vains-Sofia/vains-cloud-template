package com.vains.exception;

import com.vains.model.Result;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常处理
 * @author vains
 */
@RestControllerAdvice
public class DefaultExceptionHandlerAdvice {

    /**
     * 处理认证异常
     * @param e 异常实例
     * @return 统一响应实体
     */
    @ExceptionHandler({AuthenticationException.class})
    public Result<String> exception(AuthenticationException e) {
        return Result.error(e.getMessage());
    }

}