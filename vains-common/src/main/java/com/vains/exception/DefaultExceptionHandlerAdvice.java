package com.vains.exception;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.vains.model.Result;
import org.springframework.http.HttpStatus;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;

import javax.validation.ConstraintViolationException;
import java.sql.DataTruncation;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * 全局异常处理
 *
 * @author vains
 */
@RestControllerAdvice
public class DefaultExceptionHandlerAdvice {

    /**
     * 符号常量
     */
    private static final String DOT = ".";
    private static final String SEPARATOR_COMMA = ", ";
    private static final String SEPARATOR_COLON = ": ";

    /**
     * 处理认证异常
     *
     * @param e 异常实例
     * @return 统一响应实体
     */
    @ExceptionHandler({AuthenticationException.class})
    public Result<String> exception(AuthenticationException e) {
        return Result.error(HttpStatus.UNAUTHORIZED.value(), e.getMessage());
    }

    /**
     * 处理统一的类型转换异常
     *
     * @param e 转换异常
     * @return 返回处理后的异常信息
     */
    @ExceptionHandler(HttpMessageNotReadableException.class)
    public Result<String> httpMessageNotReadableException(HttpMessageNotReadableException e) {
        if (e.getCause() instanceof InvalidFormatException) {
            InvalidFormatException invalidFormatException = (InvalidFormatException) e.getCause();
            StringBuilder errors = new StringBuilder();
            List<JsonMappingException.Reference> path = invalidFormatException.getPath();
            for (JsonMappingException.Reference reference : path) {
                errors.append("参数名：").append(reference.getFieldName()).append(" 输入不合法，需要的是 ").append(invalidFormatException.getTargetType().getName()).append(" 类型，").append("提交的值是：").append(invalidFormatException.getValue());
            }
            return Result.error(HttpStatus.BAD_REQUEST.value(), errors.toString());
        } else if (e.getCause() instanceof JsonParseException) {
            return Result.error(HttpStatus.BAD_REQUEST.value(), e.getMessage());
        }
        return Result.error(HttpStatus.BAD_REQUEST.value(), "参数转换异常");
    }

    /**
     * 处理URL的类型转换异常
     *
     * @param e 转换异常
     * @return 返回处理后的异常信息
     */
    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    public Result<String> methodArgumentTypeMismatchException(MethodArgumentTypeMismatchException e) {
        String message = String.format("类型转换失败，参数%s需要的类型是：%s, 请传入正确的参数类型", e.getName(), e.getRequiredType());
        return Result.error(HttpStatus.BAD_REQUEST.value(), message);
    }

    /**
     * 处理Json请求参数异常
     *
     * @param e 具体地校验异常
     * @return 返回处理后的异常信息
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Result<String> methodArgumentNotValidException(MethodArgumentNotValidException e) {
        return Result.error(HttpStatus.BAD_REQUEST.value(), this.convertFiledErrors(e.getBindingResult().getFieldErrors()));
    }

    /**
     * 处理Form请求参数异常
     *
     * @param e 具体地校验异常
     * @return 返回处理后的异常信息
     */
    @ExceptionHandler(BindException.class)
    public Result<String> bindException(BindException e) {
        return Result.error(HttpStatus.BAD_REQUEST.value(), this.convertFiledErrors(e.getFieldErrors()));
    }

    /**
     * 验证异常处理 - @Validated加在controller类上，且在参数列表中直接指定constraints时触发
     *
     * @param e 具体地校验异常
     * @return 返回处理后的异常信息
     */
    @ExceptionHandler(ConstraintViolationException.class)
    public Result<String> methodArgumentNotValidException(ConstraintViolationException e) {
        return Result.error(HttpStatus.BAD_REQUEST.value(), this.convertConstraintViolations(e));
    }

    /**
     * Sql 异常：数据长度超过字段最大长度问题
     *
     * @param e 具体地校验异常
     * @return 返回处理后的异常信息
     */
    @ExceptionHandler(DataTruncation.class)
    public Result<String> dataTruncation(DataTruncation e) {
        return Result.error(HttpStatus.INTERNAL_SERVER_ERROR.value(), e.getMessage());
    }

    /**
     * 捕获其它异常
     *
     * @param e 具体地校验异常
     * @return 返回处理后的异常信息
     */
    @ExceptionHandler(Exception.class)
    public Result<String> exception(Exception e) {
        return Result.error(HttpStatus.INTERNAL_SERVER_ERROR.value(), e.getMessage());
    }

    /**
     * 转换FieldError列表为错误提示信息
     *
     * @param fieldErrors 字段异常信息
     * @return 拼接后的异常信息
     */
    private String convertFiledErrors(List<FieldError> fieldErrors) {
        return Optional.ofNullable(fieldErrors)
                .map(fieldErrorsInner -> fieldErrorsInner.stream()
                        .flatMap(fieldError -> Stream.of(fieldError.getField(), fieldError.getDefaultMessage(), SEPARATOR_COMMA))
                        .collect(Collectors.joining()))
                .map(msg -> msg.substring(0, msg.length() - SEPARATOR_COMMA.length()))
                .orElse(null);
    }

    /**
     * 转换ConstraintViolationException异常为错误提示信息
     *
     * @param constraintViolationException 参数中基础变量校验的异常信息
     * @return 返回截取后的异常
     */
    private String convertConstraintViolations(ConstraintViolationException constraintViolationException) {
        return Optional.ofNullable(constraintViolationException.getConstraintViolations())
                .map(constraintViolations -> constraintViolations.stream()
                        .flatMap(constraintViolation -> {
                            String path = constraintViolation.getPropertyPath().toString();
                            path = path.substring(path.lastIndexOf(DOT) + 1);
                            String errMsg = constraintViolation.getMessage();
                            return Stream.of(path, SEPARATOR_COLON, errMsg, SEPARATOR_COMMA);
                        }).collect(Collectors.joining())
                ).map(msg -> msg.substring(0, msg.length() - SEPARATOR_COMMA.length()))
                .orElse(null);

    }

}