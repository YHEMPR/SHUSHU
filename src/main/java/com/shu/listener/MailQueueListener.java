package com.shu.listener;

import jakarta.annotation.Resource;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * 用于处理邮件发送的消息队列监听器。
 * 监听名为"mail"的队列，接收发送邮件的任务。
 */
@Component
@RabbitListener(queues = "mail")
public class MailQueueListener {

    /**
     * 注入邮件发送器，用于实际发送邮件。
     */
    @Resource
    JavaMailSender sender;

    /**
     * 从配置文件中获取发件人邮箱地址，用于邮件发送。
     */
    @Value("${spring.mail.username}")
    String username;

    /**
     * 处理发送邮件的消息。
     * 根据邮件类型创建相应的邮件内容，并发送邮件。
     *
     * @param data 邮件数据，包含邮件类型、验证码和收件人邮箱。
     */
    @RabbitHandler
    public void sendMailMessage(Map<String, Object> data) {
        String email = data.get("email").toString();
        Integer code = (Integer) data.get("code");
        SimpleMailMessage message = switch (data.get("type").toString()) {
            case "register" ->
                    createMessage("欢迎注册我们的网站",
                            "您的邮件注册验证码为: "+code+"，有效时间3分钟，为了保障您的账户安全，请勿向他人泄露验证码信息。",
                            email);
            case "reset" ->
                    createMessage("您的密码重置邮件",
                            "你好，您正在执行重置密码操作，验证码: "+code+"，有效时间3分钟，如非本人操作，请无视。",
                            email);
            default -> null;
        };
        if(message == null) return;
        sender.send(message);
    }

    /**
     * 创建并返回一个简单的邮件消息实体。
     * 邮件包括主题、正文和收件人。
     *
     * @param title 邮件主题。
     * @param content 邮件正文。
     * @param email 收件人邮箱地址。
     * @return 创建的简单邮件消息实体。
     */
    private SimpleMailMessage createMessage(String title, String content, String email){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setSubject(title);
        message.setText(content);
        message.setTo(email);
        message.setFrom(username);
        return message;
    }
}
