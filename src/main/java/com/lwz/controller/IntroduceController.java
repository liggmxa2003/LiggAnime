package com.lwz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IntroduceController {
    //介绍页面
    @GetMapping("/introduce")
    public String introduce(){
        return "introduce";
    }
}
