package com.lwz.controller.admin;

import com.lwz.pojo.User;
import com.lwz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin")
public class RegisterController {

    @Autowired
    private UserService userService;

    //去注册页面
    @GetMapping("/register")
    public String register(){
        return "admin/register";
    }

   //注册用户
    @PostMapping("/register")
    public String handleRegister(User user, RedirectAttributes attributes) {
        if (userService.registerUser(user)) {
            attributes.addFlashAttribute("error", "用户注册成功");
            return "redirect:register";
        } else {
            //重定向显示时信息
            attributes.addFlashAttribute("error", "用户已存在");
            return "redirect:register";
        }
    }

}
