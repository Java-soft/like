package com.cn.hnust.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.base.BaseServiceImpl;
import com.cn.hnust.mapping.BaseDao;
import com.cn.hnust.pojo.Speaker;

import com.cn.hnust.service.SpeakerService;

@Service
public class SpeakerServiceImpl extends  BaseServiceImpl<Speaker>implements SpeakerService {


	@Resource(name="speakerMapper")
	public void set (BaseDao<Speaker> basedao){
	super.setBasedao(basedao);
}
	}
