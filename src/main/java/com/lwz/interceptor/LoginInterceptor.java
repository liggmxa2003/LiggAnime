package com.lwz.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//登录拦截器
public class LoginInterceptor implements HandlerInterceptor {

    /**
     * 在请求处理之前进行预处理
     *
     * @param request 	HttpServletRequest对象，用于获取请求信息
     * @param response 	HttpServletResponse对象，用于发送响应信息
     * @param handler 	处理请求的处理器对象
     * @return boolean 	返回true表示继续执行下一个拦截器或处理器，返回false表示中断执行
     *
     * 此方法主要用于检查用户是否已经登录通过检查session中的"user"属性
     * 如果用户未登录，则重定向到管理员登录页面，阻止访问受保护的资源
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 检查session中是否有"user"属性，如果没有则表示用户未登录
        if (request.getSession().getAttribute("user") == null){
            // 用户未登录，重定向到管理员登录页面
            response.sendRedirect("/admin");
            // 返回false，阻止访问受保护的资源
            return false;
        }
        // 用户已登录，继续执行下一个拦截器或处理器
        return true;
    }
}
