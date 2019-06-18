package com.service;

import com.entity.MovieComment;
import com.vo.VeiwMovieComment;
import com.vo.ViewUserComment;

import java.util.ArrayList;

public interface CommentService {


    ArrayList<VeiwMovieComment>getAllCommentByMovieId(Integer movieId);

    ArrayList<ViewUserComment>getAllCommentByUserId(Integer userId);

    ArrayList<VeiwMovieComment> getAllCommentByMovieId(Integer movieId,int pageNum,int pageSize);

    ArrayList<ViewUserComment> getAllCommentByUserId(Integer userId,int pageNum,int pageSize);

    MovieComment selectComment(MovieComment movieComment);

    int getAllCommentCountByMovieId(Integer movieId);

    int getAllCommentCountByUserId(Integer userId);

    int addComment(MovieComment movieComment);

    int updateComment(MovieComment movieComment);

    int delectComment(MovieComment movieComment);
}
