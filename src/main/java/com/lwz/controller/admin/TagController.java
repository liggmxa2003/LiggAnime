package com.lwz.controller.admin;

import com.lwz.pojo.Tag;
import com.lwz.service.TagService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

//标签
@Controller
@RequestMapping("/admin")
public class TagController {

    @Autowired
    TagService tagService;

    /**
     * 获取标签列表页面
     *
     * 该方法用于处理获取标签列表的请求，允许通过页码参数来分页查看标签信息
     *
     * @param pagenum 页码号，从1开始，默认为1，用于指定获取第几页的数据
     * @param model 用于向视图传递数据的对象，这里用来传递分页后的标签信息
     * @return 返回标签列表页面的视图名称
     */
    @GetMapping("/tags")
    public String tags(@RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum, Model model){
        //启动分页功能，参数分别为当前页码和每页显示的数量
        PageHelper.startPage(pagenum, 5);
        //调用服务层方法，获取所有标签信息
        List<Tag> allTag = tagService.getAllTag();
        //创建分页信息对象，封装查询到的标签列表
        PageInfo<Tag> pageInfo = new PageInfo<>(allTag);
        //将分页信息添加到模型中，以便在视图中使用
        model.addAttribute("pageInfo", pageInfo);
        //返回标签列表页面的视图名称
        return "admin/tags";
    }

    //新增标签
    @GetMapping("/tags/input")
    public String toAddTag(Model model){
        model.addAttribute("tag", new Tag());   //返回一个tag对象给前端th:object
        return "admin/tags-input";
    }

//    跳转到编辑标签页面
    @GetMapping("/tags/{id}/input")
    public String toEditTag(@PathVariable Long id, Model model){
        // 获取指定id的标签信息并添加到model中，以便在视图中显示标签信息
        model.addAttribute("tag", tagService.getTag(id));
        // 返回到标签编辑页面的视图名称
        return "admin/tags-input";
    }

//    处理添加新标签的请求
    @PostMapping("/tags")
    public String addTag(Tag tag, RedirectAttributes attributes){
        // 检查数据库中是否已存在同名标签
        Tag t = tagService.getTagByName(tag.getName());
        if(t != null){
            // 如果存在重复标签，携带消息重定向到标签输入页面
            attributes.addFlashAttribute("msg", "不能添加重复的标签");
            return "redirect:/admin/tags/input";
        }else {
            // 如果不存在重复标签，携带成功消息重定向到标签列表页面
            attributes.addFlashAttribute("msg", "添加成功");
        }
        // 保存新标签到数据库
        tagService.saveTag(tag);
        return "redirect:/admin/tags";   //不能直接跳转到tags页面，否则不会显示tag数据(没经过tags方法)
    }

    /**
     * 处理标签更新请求
     * 当用户尝试更新一个标签时，此方法会检查新标签名称是否已存在于数据库中
     * 如果存在，将向用户显示错误消息并重定向到标签输入页面
     * 如果不存在，将更新标签并重定向到标签列表页面
     *
     * @param id 标签的唯一标识符，用于数据库中的标签识别
     * @param tag 从表单中获取的标签对象，包含用户输入的新标签信息
     * @param attributes 用于在重定向时携带消息属性的对象
     * @return 根据处理结果，重定向到不同的页面
     */
    @PostMapping("/tags/{id}")
    public String editTag(@PathVariable Long id, Tag tag, RedirectAttributes attributes){  //修改
        // 检查数据库中是否存在同名标签
        Tag t = tagService.getTagByName(tag.getName());
        // 如果存在同名标签，向用户显示错误消息并重定向到标签输入页面
        if(t != null){
            attributes.addFlashAttribute("msg", "不能添加重复的标签");
            return "redirect:/admin/tags/input";
        }else {
            // 如果不存在同名标签，向用户显示成功消息
            attributes.addFlashAttribute("msg", "修改成功");
        }
        // 更新数据库中的标签信息
        tagService.updateTag(tag);
        // 重定向到标签列表页面
        return "redirect:/admin/tags";   //不能直接跳转到tags页面，否则不会显示tag数据(没经过tags方法)
    }

//    删除指定ID的标签
    @GetMapping("/tags/{id}/delete")
    public String delete(@PathVariable Long id, RedirectAttributes attributes){
        // 调用服务层方法删除指定ID的标签
        tagService.deleteTag(id);
        // 设置重定向属性，携带删除成功的消息
        attributes.addFlashAttribute("msg", "删除成功");
        // 重定向到标签列表页面的路由
        return "redirect:/admin/tags";
    }
}
