package com.lwz.controller.admin;

import com.lwz.pojo.Anime;
import com.lwz.pojo.User;
import com.lwz.service.AnimeService;
import com.lwz.service.TagService;
import com.lwz.service.TypeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;


//视频管理
@Controller
@RequestMapping("/admin")
public class AnimeController {

    @Autowired
    private AnimeService blogService;

    @Autowired
    private TypeService typeService;

    @Autowired
    private TagService tagService;

    /**
     * 为模型对象添加类型和标签属性
     *
     * 本方法通过调用TypeService和TagService的服务方法，获取所有的类型和标签数据，
     * 并将其作为属性添加到Model对象中，以便在视图中使用这些数据进行展示或进一步处理
     *
     * @param model Model对象，用于封装数据并传递到视图层
     */
    public void setTypeAndTag(Model model) {
        // 添加所有分类到模型
        model.addAttribute("types", typeService.getAllType());
        // 添加所有标签到模型
        model.addAttribute("tags", tagService.getAllTag());
    }

    @GetMapping("/blogs")  //后台显示番剧列表
    public String blogs(@RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum, Model model){
        PageHelper.startPage(pagenum, 8);
        List<Anime> allBlog = blogService.getAllBlog();
        //得到分页结果对象
        PageInfo pageInfo = new PageInfo(allBlog);
        model.addAttribute("pageInfo", pageInfo);
        setTypeAndTag(model);  //查询类型和标签
        return "admin/blogs";
    }


    //暂时废弃
    @PostMapping("/blogs/search")  //按条件查询番剧
    public String searchBlogs(Anime blog, @RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum, Model model){
        PageHelper.startPage(pagenum, 5);
        List<Anime> allBlog = blogService.searchAllBlog(blog);
        //得到分页结果对象
        PageInfo pageInfo = new PageInfo(allBlog);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("message", "查询成功");
        setTypeAndTag(model);
        return "admin/blogs";
    }

    @GetMapping("/blogs/input") //去新增番剧页面
    public String toAddBlog(Model model){
        model.addAttribute("blog", new Anime());  //返回一个blog对象给前端th:object
        setTypeAndTag(model);
        return "admin/blogs-input";
    }

    @GetMapping("/blogs/{id}/input") //去编辑番剧页面
    public String toEditBlog(@PathVariable Long id, Model model){
        Anime blog = blogService.getBlog(id);
        blog.init();   //将tags集合转换为tagIds字符串
        model.addAttribute("blog", blog);     //返回一个blog对象给前端th:object
        setTypeAndTag(model);
        return "admin/blogs-input";
    }

    @PostMapping("/blogs") //新增、编辑番剧
                        //从 HttpSession 中获取当前登录用户，并设置到 blog 对象中。
    public String addBlog(Anime blog, HttpSession session, RedirectAttributes attributes){
        //设置user属性
        blog.setUser((User) session.getAttribute("user"));
        //设置用户id
        blog.setUserId(blog.getUser().getId());
        //设置blog的type
        blog.setType(typeService.getType(blog.getType().getId()));
        //设置blog中typeId属性
        blog.setTypeId(blog.getType().getId());
        //给blog中的List<Tag>赋值
        blog.setTags(tagService.getTagByString(blog.getTagIds()));

        if (blog.getId() == null) {   //id为空，则为新增
            blogService.saveBlog(blog);
        } else {
            blogService.updateBlog(blog);//不为空则修改
        }

        attributes.addFlashAttribute("msg", "新增成功");
        return "redirect:/admin/blogs"; //重定向到后台显示番剧列表
    }

//    删除指定ID的番剧文章
    @GetMapping("/blogs/{id}/delete")
    public String deleteBlogs(@PathVariable Long id, RedirectAttributes attributes){
        blogService.deleteBlog(id);
        attributes.addFlashAttribute("msg", "删除成功");
        return "redirect:/admin/blogs";//重定向到后台显示番剧列表
    }
}
