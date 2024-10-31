package com.lwz.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

//HTTP状态码
// 自定义NotFoundException异常类，用于处理资源未找到的情况
// 该异常类继承自RuntimeException，属于运行时异常
// 使用@ResponseStatus注解，指定当抛出此类异常时，HTTP状态码为404 NOT FOUND
@ResponseStatus(HttpStatus.NOT_FOUND)
public class NotFoundException extends RuntimeException {
    // 无参构造方法
    public NotFoundException() {
        super();
    }

    // 带有错误消息参数的构造方法
    public NotFoundException(String message) {
        super(message);
    }

    // 带有错误消息和原因参数的构造方法
    public NotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
}

