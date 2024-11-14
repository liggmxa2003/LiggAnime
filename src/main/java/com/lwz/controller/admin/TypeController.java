package com.lwz.controller.admin;

import com.lwz.pojo.Type;
import com.lwz.service.TypeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class TypeController {

    @Autowired
    TypeService typeService;

    //     处理分类列表请求
    @GetMapping("/types")
    public String types(@RequestParam(required = false, defaultValue = "1", value = "pagenum") int pagenum, Model model) {
        // 启动分页功能，设置当前页为pagenum，每页显示5条记录
        PageHelper.startPage(pagenum, 5);
        // 获取所有分类数据
        List<Type> allType = typeService.getAllType();
        //得到分页结果对象
        PageInfo<Type> pageInfo = new PageInfo<>(allType);
        // 将分页结果添加到模型中，以便在视图中使用
        model.addAttribute("pageInfo", pageInfo);
        // 返回分类列表页面的视图名称
        return "admin/types";
    }

    //    处理类型添加页面请求
    @GetMapping("/types/input")
    public String toAddType(Model model) {
        // 返回一个空的type对象给前端，用于绑定类型添加表单的数据
        model.addAttribute("type", new Type());
        // 返回类型添加页面的视图名称
        return "admin/types-input";
    }

    //    获取类型编辑页面
    @GetMapping("/types/{id}/input")
    public String toEditType(@PathVariable Long id, Model model) {
        // 从服务层获取特定类型的实例，并添加到模型中，以便在视图中使用
        model.addAttribute("type", typeService.getType(id));
        // 返回类型编辑页面的视图名称
        return "admin/types-input";
    }

    //    处理添加新的文章分类请求
    @PostMapping("/types")
    public String addType(@Valid Type type, BindingResult result, RedirectAttributes attributes) {   //新增
        // 数据校验失败时，转发到新增分类页面，提示用户输入错误
        if (result.hasErrors()) {//验证name为空，转发到新增页面
            return "admin/types-input";
        }
        // 检查数据库中是否已存在相同名称的分类，以避免重复添加
        Type t = typeService.getTypeByName(type.getName());
        if (t != null) {
            // 如果分类已存在，携带错误消息重定向到输入页面
            attributes.addFlashAttribute("msg", "不能添加重复的分类");
            return "redirect:/admin/types/input";
        } else {
            // 如果分类不存在，携带成功消息重定向到类型列表页面
            attributes.addFlashAttribute("msg", "添加成功");
            // 保存新的分类信息到数据库
            typeService.saveType(type);
        }
        // 重定向到类型列表页面，避免直接跳转导致数据不显示
        return "redirect:/admin/types";   //不能直接跳转到types页面，否则不会显示type数据(没经过types方法)
    }

    //    处理类型编辑请求
    @PostMapping("/types/{id}")
    public String editType(@PathVariable Long id, Type type, RedirectAttributes attributes) {  //修改
        // 检查是否有相同名称的类型已存在
        Type t = typeService.getTypeByName(type.getName());
        if (t != null) {
            // 如果存在，添加错误消息并重定向到类型输入页面
            attributes.addFlashAttribute("msg", "不能添加重复的分类");
            return "redirect:/admin/types/input";
        } else {
            // 如果不存在，添加成功消息
            attributes.addFlashAttribute("msg", "修改成功");
        }
        // 更新类型信息
        typeService.updateType(type);
        // 重定向到类型列表页面
        return "redirect:/admin/types";   //不能直接跳转到types页面，否则不会显示type数据(没经过types方法)
    }

    //    处理类型删除请求
    @GetMapping("/types/{id}/delete")
    public String delete(@PathVariable Long id, RedirectAttributes attributes) {
        // 调用服务层方法删除指定ID的类型
        typeService.deleteType(id);
        // 添加闪存属性，用于显示删除成功的消息
        attributes.addFlashAttribute("msg", "删除成功");
        // 重定向到类型列表页面
        return "redirect:/admin/types";
    }
}
