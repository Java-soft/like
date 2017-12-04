package com.cn.hnust.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.base.BaseServiceImpl;
import com.cn.hnust.mapping.BaseDao;

import com.cn.hnust.pojo.Subject;
import com.cn.hnust.service.SubjectService;

@Service
public class SubjectServiceImpl extends BaseServiceImpl<Subject> implements SubjectService  {
	@Resource(name="subjectMapper")
	public void set (BaseDao<Subject> basedao){
	super.setBasedao(basedao);
}
}
