package com.cn.hnust.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.base.BaseServiceImpl;
import com.cn.hnust.mapping.BaseDao;
import com.cn.hnust.pojo.Course;

import com.cn.hnust.service.CourseService;

@Service
public class CourseServiceImpl extends BaseServiceImpl<Course> implements CourseService{

	@Resource(name="courseMapper")
	public void set (BaseDao<Course> basedao){
	super.setBasedao(basedao);
	}
}
