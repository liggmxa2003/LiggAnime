package com.lwz.controller.admin;

import com.lwz.pojo.User;
import com.lwz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

//登录
@Controller
@RequestMapping("/admin")
public class LoginController {

    @Autowired
    private UserService userService;

    //登录页面
    @GetMapping()
    public String loginPage(){
        return "admin/login";
    }

    //登录
    @GetMapping("/index")
    public String index(Model model){
        return "admin/index";
    }


    /**
     * 处理用户登录请求
     *
     * @param username 用户名
     * @param password 密码
     * @param session HTTP会话，用于保存用户登录状态
     * @param attributes 用于重定向时传递属性
     * @return 登录成功返回管理员主页，否则重定向到登录页并显示错误信息
     */
    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        HttpSession session,//用于保存用户登录状态
                        RedirectAttributes attributes){//用于在重定向时传递属性
        // 验证用户名和密码
        User user = userService.checkUser(username, password);
        if(user != null){
            // 登录成功，移除用户密码信息，避免安全风险
            user.setPassword(null);
            // 将用户信息保存到user会话中，表示用户已登录
            session.setAttribute("user", user);
            // 跳转到管理员主页
            return "admin/index";
        }else {
            // 登录失败，设置错误信息并重定向到登录页
            attributes.addFlashAttribute("msg", "用户名或密码错误");
            return "redirect:/admin";
        }
    }



//    处理用户登出请求的控制器方法
    @GetMapping("/logout")
    public String logout(HttpSession session){
        // 移除用户会话中的"user"属性，以注销用户
        session.removeAttribute("user");
        return "redirect:/";// 重定向到首页面
    }
}
