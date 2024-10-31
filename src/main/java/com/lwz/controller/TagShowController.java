package com.lwz.controller;

import com.lwz.pojo.Anime;
import com.lwz.pojo.Tag;
import com.lwz.service.AnimeService;
import com.lwz.service.TagService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

//标签页
@Controller
public class TagShowController {

    @Autowired
    private TagService tagService;

    @Autowired
    private AnimeService blogService;

    /**
     * 根据标签ID获取番剧列表
     * 
     * @param id 标签ID，用于筛选番剧
     * @param pagenum 页码，默认为1，用于分页显示
     * @param model 用于传递数据到视图
     * @return 返回'tags'视图，展示标签下的番剧列表
     */
    @GetMapping("/tags/{id}")
    public String types(@PathVariable Long id, @RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum,
                        Model model){
        // 开启分页，每页显示100条记录
        PageHelper.startPage(pagenum, 10);
        // 获取所有标签
        List<Tag> tags = tagService.getBlogTag();
        
        // 如果id为-1，表示从导航点过来，需要获取第一个标签的ID
        if (id == -1){
            id = tags.get(0).getId();
        }
        
        // 根据标签ID获取番剧列表
        List<Anime> blogs = blogService.getByTagId(id);
        // 打印番剧信息，用于调试
        for (Anime blog : blogs) {
            System.out.println(blog);
        }
        
        // 创建并初始化PageInfo对象，用于封装分页信息
        PageInfo<Anime> pageInfo = new PageInfo<>(blogs);
        
        // 将标签列表、分页信息和当前活动的标签ID添加到模型中，以便在视图中使用
        model.addAttribute("tags", tags);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("activeTagId", id);
    
        // 返回'tags'视图，展示标签下的番剧列表
        return "tags";
    }

}
