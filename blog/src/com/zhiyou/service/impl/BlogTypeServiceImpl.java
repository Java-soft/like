package com.zhiyou.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyou.dao.BaseDao;
import com.zhiyou.model.Blog;
import com.zhiyou.model.Blogtype;
import com.zhiyou.service.BlogTypeService;
@Service("blogTypeService")
public class BlogTypeServiceImpl extends BaseServiceImpl<Blogtype> implements BlogTypeService {
	@Resource(name="blogTypeDao")
	@Override
	public void setBaseDao(BaseDao<Blogtype> baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
	private Blogtype blogtype;
	public Blogtype getBlogtype() {
		return blogtype;
	}
	public void setBlogtype(Blogtype blogtype) {
		this.blogtype = blogtype;
	}
	
}
