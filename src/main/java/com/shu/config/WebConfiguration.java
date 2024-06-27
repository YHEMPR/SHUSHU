package com.shu.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Web配置类，用于配置Spring Web MVC和安全相关的设置。
 */
@Configuration
public class WebConfiguration implements WebMvcConfigurer {

    /**
     * 配置密码编码器。
     *
     * @return 返回一个BCryptPasswordEncoder实例，用于加密和验证用户密码。
     * 使用BCrypt算法对密码进行加密，提高系统安全性。
     */
    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
}

