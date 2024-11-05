package com.lwz.controller.admin;

import com.lwz.pojo.User;
import com.lwz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
@RequestMapping("admin")
public class UserController {

    @Autowired
    private UserService userService;

    //根据id查询用户信息
    @GetMapping("/user/{id}")
    public String user(@PathVariable Long id, Model model){
        model.addAttribute("user", userService.queryUserById(id));
        return "admin/user";
    }

    //修改用户信息

    @PostMapping("/user/update/{id}")
    public String editUser(User user){
        userService.updateUser(user);
        return "redirect:/admin";
    }

}
