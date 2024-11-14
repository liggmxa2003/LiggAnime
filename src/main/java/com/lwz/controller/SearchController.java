package com.lwz.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lwz.pojo.Anime;
import com.lwz.service.AnimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

//搜索Controller层
@Controller
public class SearchController {

    @Autowired
    private AnimeService animeService;
    /**
     * 处理搜索请求的控制器方法
     *
     * @param pagenum 页码，默认值为1，允许URL中不提供此参数
     * @param query 搜索关键词，用于查询数据库
     * @param model 用于向视图传递数据的对象
     * @return 返回搜索结果页面的逻辑视图名
     */
    @GetMapping("/search")
    public String search(@RequestParam(required = false, defaultValue = "1", value = "pagenum") int pagenum,
                         @RequestParam String query, Model model) {

        // 启用分页功能，从第pagenum页开始，每页显示5条记录
        PageHelper.startPage(pagenum, 10);

        // 根据搜索关键词查询数据库，获取搜索结果
        List<Anime> searchBlog = animeService.getSearchBlog(query);

        // 将搜索结果封装到PageInfo对象中，便于后续处理和传递
        PageInfo pageInfo = new PageInfo(searchBlog);

        // 将分页信息和搜索关键词添加到模型中，以便视图使用
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("query", query);

        // 返回搜索结果页面的逻辑视图名
        return "search";
    }
}
