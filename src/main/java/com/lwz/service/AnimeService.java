package com.lwz.service;

import com.lwz.pojo.Anime;

import java.util.List;
import java.util.Map;

public interface AnimeService {

    Anime getBlog(Long id);  //后台展示番剧

    Anime getDetailedBlog(Long id);  //详情页展示番剧

    List<Anime> getAllBlog();

    List<Anime> getByTypeId(Long typeId);  //根据类型id获取番剧

    List<Anime> getByTagId(Long tagId);  //根据标签id获取番剧

    List<Anime> getIndexBlog();  //主页番剧展示

    List<Anime> getAllRecommendBlog();  //推荐番剧展示

    List<Anime> getSearchBlog(String query);  //全局搜索番剧

    Map<String,List<Anime>> archiveBlog();  //归档番剧

    int countBlog();  //查询番剧条数

    int saveBlog(Anime blog);

    int updateBlog(Anime blog);

    int deleteBlog(Long id);

    List<Anime> searchAllBlog(Anime blog);  //后台根据标题、分类、推荐搜索番剧

}
