package com.lwz.controller;

import com.lwz.pojo.Anime;
import com.lwz.pojo.Type;
import com.lwz.service.AnimeService;
import com.lwz.service.TagService;
import com.lwz.service.TypeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

//主页面
@Controller
public class IndexController {

    @Autowired
    private AnimeService blogService;

    @Autowired
    private TypeService typeService;

    @Autowired
    private TagService tagService;

    //首页展示
    @GetMapping("/")
    public String toIndex(@RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum, Model model){

        PageHelper.startPage(pagenum, 8);
        List<Anime> allBlog = blogService.getIndexBlog();//获取所有番剧列表
        List<Type> allType = typeService.getBlogType();  //获取番剧的类型(联表查询)
        //得到分页结果对象
        PageInfo pageInfo = new PageInfo(allBlog);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("types", allType);
        return "index";
    }

    /**
     * 根据番剧ID获取番剧详细信息，并返回番剧页面
     * 
     * @param id 番剧的唯一标识符
     * @param model 用于传递番剧信息到视图的模型对象
     * @return 返回番剧页面的名称
     */
    @GetMapping("/blog/{id}")
    public String toLogin(@PathVariable Long id, Model model){
        // 通过番剧ID调用服务层方法获取详细的番剧信息
        Anime blog = blogService.getDetailedBlog(id);
        // 将获取的番剧信息添加到模型中，以便在视图中使用
        model.addAttribute("blog", blog);
        // 返回番剧页面的名称，此处的"blog"对应到相应的视图模板
        return "anime";
    }
//    @GetMapping("/login1")
//    public String login1(Model model){
//        return "login";
//    }
}
