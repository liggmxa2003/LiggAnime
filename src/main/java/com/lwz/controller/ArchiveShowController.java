package com.lwz.controller;

import com.lwz.service.AnimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

//动态页
@Controller
public class ArchiveShowController {

    @Autowired
    private AnimeService blogService;

    /**
     * 处理动态页面请求
     * @param model 用于存储档案信息和番剧总数的模型对象
     * @return 返回动态页面的视图名称
     */
    @GetMapping("/archives")
    public String archives(Model model) {
        // 将番剧档案信息添加到模型中
        model.addAttribute("archiveMap", blogService.archiveBlog());
        // 将番剧总数添加到模型中
        model.addAttribute("blogCount", blogService.countBlog());
        // 返回动态页面的视图名称
        return "archives";
    }
}
