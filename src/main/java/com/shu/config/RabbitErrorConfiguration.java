package com.shu.config;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.retry.MessageRecoverer;
import org.springframework.amqp.rabbit.retry.RepublishMessageRecoverer;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 配置类，用于在RabbitMQ中处理错误消息的重试机制。
 * 只有在配置属性spring.rabbitmq.listener.simple.retry.enable为true时，才会启用此配置。
 */
@Configuration
@ConditionalOnProperty(prefix = "spring.rabbitmq.listener.simple.retry",name = "enable",havingValue = "true")
public class RabbitErrorConfiguration {

    /**
     * 定义一个名为error.direct的Direct类型交换机，用于处理错误消息。
     *
     * @return DirectExchange
     */
    @Bean
    public DirectExchange errorExchange() {
        return new DirectExchange("error.direct");
    }

    /**
     * 定义一个名为error.queue的队列，用于存储错误消息。
     *
     * @return Queue
     */
    @Bean
    public Queue errorQueue() {
        return new Queue("error.queue");
    }

    /**
     * 将error.queue队列绑定到error.direct交换机上，路由键为error。
     * 这样，所有路由到error.direct交换机并匹配路由键error的消息都将被投递到error.queue队列中。
     *
     * @param errorQueue 错误消息队列
     * @param errorExchange 处理错误消息的交换机
     * @return Binding
     */
    @Bean
    public Binding errorBinding(Queue errorQueue, DirectExchange errorExchange) {
        return BindingBuilder.bind(errorQueue).to(errorExchange).with("error");
    }

    /**
     * 创建一个RepublishMessageRecoverer实例，用于在消息处理失败时重新发布消息到error.exchange交换机。
     * 通过这种方式，错误消息可以被重新路由到一个专门处理错误的队列或消费者。
     *
     * @param rabbitTemplate RabbitMQ模板，用于发送消息
     * @return MessageRecoverer
     */
    @Bean
    public MessageRecoverer messageRecoverer(RabbitTemplate rabbitTemplate) {
        return new RepublishMessageRecoverer(rabbitTemplate,"error.direct","error");
    }
}
