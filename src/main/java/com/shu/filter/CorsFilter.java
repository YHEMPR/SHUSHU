package com.shu.filter;

import com.shu.utils.Const;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * 跨域过滤器，用于处理跨域请求并添加相应的跨域响应头。
 * 通过Spring Boot的注解配置，实现过滤器的顺序和依赖注入。
 */
@Component
@Order(Const.ORDER_CORS)
public class CorsFilter extends HttpFilter {

    /**
     * 从配置文件中读取允许的跨域来源。
     */
    @Value("${spring.web.cors.origin}")
    String origin;

    /**
     * 从配置文件中读取是否允许跨域请求携带凭证。
     */
    @Value("${spring.web.cors.credentials}")
    boolean credentials;

    /**
     * 从配置文件中读取允许的HTTP方法。
     */
    @Value("${spring.web.cors.methods}")
    String methods;

    /**
     * 过滤器的核心方法，处理请求并添加跨域响应头。
     * @param request HTTP请求
     * @param response HTTP响应
     * @param chain 过滤器链，用于继续处理请求
     * @throws IOException 如果发生I/O错误
     * @throws ServletException 如果发生Servlet相关错误
     */
    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        // 添加跨域响应头
        this.addCorsHeader(request, response);
        // 继续处理请求
        chain.doFilter(request, response);
    }

    /**
     * 添加跨域响应头。
     * @param request HTTP请求
     * @param response HTTP响应
     */
    private void addCorsHeader(HttpServletRequest request, HttpServletResponse response) {
        // 设置允许的跨域来源
        response.addHeader("Access-Control-Allow-Origin", this.resolveOrigin(request));
        // 设置允许的HTTP方法
        response.addHeader("Access-Control-Allow-Methods", this.resolveMethod());
        // 设置允许的请求头
        response.addHeader("Access-Control-Allow-Headers", "Authorization, Content-Type");
        // 如果允许跨域请求携带凭证，则设置相应头
        if(credentials) {
            response.addHeader("Access-Control-Allow-Credentials", "true");
        }
    }

    /**
     * 解析并返回允许的HTTP方法。
     * @return 允许的HTTP方法字符串
     */
    private String resolveMethod(){
        // 如果配置为通配符，则返回所有常见HTTP方法，否则返回配置的方法
        return methods.equals("*") ? "GET, HEAD, POST, PUT, DELETE, OPTIONS, TRACE, PATCH" : methods;
    }

    /**
     * 解析并返回允许的跨域来源。
     * @param request HTTP请求
     * @return 允许的跨域来源字符串
     */
    private String resolveOrigin(HttpServletRequest request){
        // 如果配置为通配符，则从请求中获取来源，否则返回配置的来源
        return origin.equals("*") ? request.getHeader("Origin") : origin;
    }
}
