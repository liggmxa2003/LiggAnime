package com.lwz.controller.admin;

import com.lwz.pojo.User;
import com.lwz.service.UserService;
import com.lwz.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin")
public class RegisterController {

    @Autowired
    private UserService userService;

    //去注册页面
    @GetMapping("/register")
    public String register() {
        return "admin/register";
    }

    //注册用户
    @PostMapping("/register")
    public String handleRegister(@RequestParam String username, @RequestParam String password, RedirectAttributes attributes) {
        //对密码进行MD5加密
        String encryptedPassword = MD5Utils.encryptToMD5(password);
        if (userService.registerUser(username, encryptedPassword)) {
            attributes.addFlashAttribute("error", "用户注册成功");
            return "redirect:register";
        } else {
            //重定向显示时信息
            attributes.addFlashAttribute("error", "用户已存在");
            return "redirect:register";
        }
    }
}
