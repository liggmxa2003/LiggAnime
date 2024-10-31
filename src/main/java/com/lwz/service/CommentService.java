package com.lwz.service;

import com.lwz.pojo.Comment;

import java.util.List;

public interface CommentService {

    List<Comment> getCommentByBlogId(Long blogId);

    int saveComment(Comment comment);
}
