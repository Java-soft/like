package com.cn.hnust.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.base.BaseServiceImpl;
import com.cn.hnust.mapping.BaseDao;
import com.cn.hnust.pojo.Video;
import com.cn.hnust.service.VideoService;
@Service
public class VideoServiceImpl extends BaseServiceImpl<Video> implements VideoService{

	@Resource(name="videoMapper")
	public void set (BaseDao<Video> basedao){
	super.setBasedao(basedao);
	}

	
	
	
	
	
	
	
}
