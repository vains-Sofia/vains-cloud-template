package com.vains.interceptor;
 
import com.vains.constant.Constants;
import com.vains.model.Result;
import com.vains.util.JsonUtils;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.ObjectUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * 拦截暴露的接口，如果不是feign则返回false
 * @author vains
 */
public class NotFeignRequestInterceptor implements HandlerInterceptor {
 
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String header = request.getHeader(Constants.IS_FEIGN_CLIENT_REQUEST);
        boolean check = !ObjectUtils.isEmpty(header) || !(SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken);;
        if (!check) {
            response.setContentType("application/json;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter writer = response.getWriter();
            response.setStatus(HttpStatus.UNAUTHORIZED.value());
            writer.write(JsonUtils.objectCovertToJson(Result.error(HttpStatus.UNAUTHORIZED.value(), "未登录")));
            writer.flush();
        }
        return check;
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }
 
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        response.setContentType("application/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();
        response.setStatus(HttpStatus.UNAUTHORIZED.value());
        writer.write(JsonUtils.objectCovertToJson(Result.error("未登录")));
        writer.flush();
    }
}