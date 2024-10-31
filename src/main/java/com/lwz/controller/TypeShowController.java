package com.lwz.controller;

import com.lwz.pojo.Anime;
import com.lwz.pojo.Type;
import com.lwz.service.AnimeService;
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

//分类页
@Controller
public class TypeShowController {

    @Autowired
    private TypeService typeService;

    @Autowired
    private AnimeService blogService;

    /**
     * 处理分类页面请求
     * 
     * @param id 分类ID，用于查询特定分类的番剧
     * @param pagenum 页码，用于分页显示分类列表，默认值为1
     * @param model 用于传递数据到视图
     * @return 返回分类页面的视图名称
     */
    @GetMapping("/types/{id}")
    public String types(@PathVariable Long id, @RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum,
                        Model model){
        // 开启分页，每页显示100条记录
        PageHelper.startPage(pagenum, 10);
        // 获取所有番剧分类列表
        List<Type> types = typeService.getBlogType();
        
        // 如果id为-1，表示从导航点过来，需要获取第一个分类的id
        if (id == -1){
            id = types.get(0).getId();
        }
        
        // 根据分类ID获取番剧列表
        List<Anime> blogs = blogService.getByTypeId(id);
        // 创建PageInfo对象，用于封装分页信息
        PageInfo<Anime> pageInfo = new PageInfo<>(blogs);
        
        // 将分类列表、分页信息和当前活动分类ID添加到模型中
        model.addAttribute("types", types);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("activeTypeId", id);
    
        // 返回分类页面的视图名称
        return "types";
    }
}
