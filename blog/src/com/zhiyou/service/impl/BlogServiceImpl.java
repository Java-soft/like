package com.zhiyou.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyou.dao.BaseDao;
import com.zhiyou.dao.BlogDao;
import com.zhiyou.model.Blog;

import com.zhiyou.service.BlogService;

@Service("blogService")
public class BlogServiceImpl extends BaseServiceImpl<Blog> implements BlogService{

	@Resource(name="blogDao")
	@Override
	public void setBaseDao(BaseDao<Blog> baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
	
	private BlogDao blogDao;

	public BlogDao getBlogDao() {
		return blogDao;
	}

	public void setBlogDao(BlogDao blogDao) {
		this.blogDao = blogDao;
	}
	

	
	
}
