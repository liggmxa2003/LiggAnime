package com.lwz.service.impl;

import com.lwz.dao.AinmeDao;
import com.lwz.exception.NotFoundException;
import com.lwz.pojo.Anime;
import com.lwz.pojo.AnimeAndTag;
import com.lwz.pojo.Tag;
import com.lwz.service.AnimeService;
import com.lwz.utils.MarkdownUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class AnimeServiceImpl implements AnimeService {

    @Autowired
    AinmeDao blogDao;

    @Override
    public Anime getBlog(Long id) {
        return blogDao.getBlog(id);
    }

    @Override
    public Anime getDetailedBlog(Long id) {
        Anime blog = blogDao.getDetailedBlog(id);
        if (blog == null) {
            throw new NotFoundException("该番剧不存在");
        }
        String content = blog.getContent();
        blog.setContent(MarkdownUtils.markdownToHtmlExtensions(content));  //将Markdown格式转换成html
        return blog;
    }

    @Override
    public List<Anime> getAllBlog() {
        return blogDao.getAllBlog();
    }

    @Override
    public List<Anime> getByTypeId(Long typeId) {
        return blogDao.getByTypeId(typeId);
    }

    @Override
    public List<Anime> getByTagId(Long tagId) {
        return blogDao.getByTagId(tagId);
    }

    @Override
    public List<Anime> getIndexBlog() {
        return blogDao.getIndexBlog();
    }

    @Override
    public List<Anime> getAllRecommendBlog() {
        return blogDao.getAllRecommendBlog();
    }

    @Override
    public List<Anime> getSearchBlog(String query) {
        return blogDao.getSearchBlog(query);
    }

    @Override
    public Map<String, List<Anime>> archiveBlog() {
        List<String> years = blogDao.findGroupYear();
        Set<String> set = new HashSet<>(years);  //set去掉重复的年份
        Map<String, List<Anime>> map = new HashMap<>();
        for (String year : set) {
            map.put(year, blogDao.findByYear(year));
        }
        return map;
    }

    @Override
    public int countBlog() {
        return blogDao.getAllBlog().size();
    }

    @Override
    public List<Anime> searchAllBlog(Anime blog) {
        return blogDao.searchAllBlog(blog);
    }


    @Override    //新增番剧
    public int saveBlog(Anime blog) {
        blog.setCreateTime(new Date());
        blog.setUpdateTime(new Date());
        blog.setViews(0);
        //保存番剧
        blogDao.saveBlog(blog);
        //保存番剧后才能获取自增的id
        Long id = blog.getId();
        //将标签的数据存到t_blogs_tag表中
        List<Tag> tags = blog.getTags();
        AnimeAndTag blogAndTag = null;
        for (Tag tag : tags) {
            //新增时无法获取自增的id,在mybatis里修改
            blogAndTag = new AnimeAndTag(tag.getId(), id);
            blogDao.saveBlogAndTag(blogAndTag);
        }
        return 1;
    }

    //编辑番剧
    @Override
    public int updateBlog(Anime blog) {
        // 更新番剧的修改时间
        blog.setUpdateTime(new Date());
        /**
         * 将番剧关联的标签信息保存到数据库的t_blogs_tag表中
         * 这一步是必要的，因为番剧和标签之间是多对多关系，需要通过中间表来维护它们的关联
         */
        List<Tag> tags = blog.getTags();
        AnimeAndTag blogAndTag = null;
        for (Tag tag : tags) {
            blogAndTag = new AnimeAndTag(tag.getId(), blog.getId());
            blogDao.saveBlogAndTag(blogAndTag);
        }
        // 调用DAO层的方法来更新番剧信息
        return blogDao.updateBlog(blog);
    }

//    删除指定ID的番剧
    @Override
    public int deleteBlog(Long id) {
        return blogDao.deleteBlog(id);
    }

}
