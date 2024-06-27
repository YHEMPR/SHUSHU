package com.shu.filter;

import com.auth0.jwt.interfaces.DecodedJWT;
import com.shu.utils.Const;
import com.shu.utils.JwtUtils;
import jakarta.annotation.Resource;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

/**
 * Jwt认证过滤器，用于在每个HTTP请求中验证JWT令牌的有效性。
 * 如果令牌有效，将解析出的用户信息设置为当前的认证信息。
 */
@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    @Resource
    private JwtUtils utils; // JWT工具类，用于解析和验证JWT令牌

    /**
     * 处理请求的内部方法。从请求头中获取Authorization信息，尝试解析JWT令牌。
     * 如果令牌有效，将用户信息设置到SecurityContextHolder中，以进行后续的安全检查。
     *
     * @param request  HTTP请求
     * @param response HTTP响应
     * @param filterChain 过滤器链，用于继续处理请求
     * @throws ServletException 如果处理请求时发生Servlet相关异常
     * @throws IOException      如果处理请求时发生IO异常
     */
    @Override
    protected void doFilterInternal(HttpServletRequest request,
                                    HttpServletResponse response,
                                    FilterChain filterChain) throws ServletException, IOException {
        // 从请求头中获取Authorization信息
        String authorization = request.getHeader("Authorization");
        // 尝试解析JWT令牌
        DecodedJWT jwt = utils.resolveJwt(authorization);
        if (jwt != null) {
            // 从JWT令牌中解析出用户详细信息
            UserDetails user = utils.toUser(jwt);
            // 创建一个UsernamePasswordAuthenticationToken对象，用于存储认证信息
            UsernamePasswordAuthenticationToken authentication =
                    new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
            // 设置认证的细节信息
            authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
            // 将认证信息设置到SecurityContextHolder中
            SecurityContextHolder.getContext().setAuthentication(authentication);
            // 将用户的ID设置到请求属性中，以便后续使用
            request.setAttribute(Const.ATTR_USER_ID, utils.toId(jwt));
        }
        // 继续处理请求
        filterChain.doFilter(request, response);
    }
}
