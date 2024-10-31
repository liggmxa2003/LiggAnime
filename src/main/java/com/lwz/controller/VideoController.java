package com.lwz.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lwz.pojo.Anime;
import com.lwz.pojo.Type;
import com.lwz.service.AnimeService;
import com.lwz.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
//视频页
@Controller
public class VideoController {

    @Autowired
    private AnimeService blogService;

    @Autowired
    private TypeService typeService;
    @GetMapping("/video")
    public String video(@RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum, Model model){

        PageHelper.startPage(pagenum, 20);
        List<Anime> allBlog = blogService.getIndexBlog();//获取所有番剧列表
        //得到分页结果对象
        PageInfo pageInfo = new PageInfo(allBlog);
        model.addAttribute("pageInfo", pageInfo);
        return "video";
    }
}
