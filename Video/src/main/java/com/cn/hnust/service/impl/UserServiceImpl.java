package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.base.BaseServiceImpl;
import com.cn.hnust.mapping.BaseDao;
import com.cn.hnust.mapping.UserMapper;
import com.cn.hnust.pojo.Speaker;
import com.cn.hnust.pojo.User;
import com.cn.hnust.pojo.UserExample;
import com.cn.hnust.service.UserService;

@Service("UserService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	@Resource
	private UserMapper userMapper;
	
	@Resource(name="userMapper")
	public void set (BaseDao<User> basedao){
	super.setBasedao(basedao);}

	@Override
	public User selelectbyemail(String email) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		example.createCriteria().andEmailEqualTo(email);
		return userMapper.selectbyemail(example);
	}
	@Override
	public User selelectbycode(String code) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		example.createCriteria().andCodeEqualTo(code);
		return userMapper.selectbycode(example);
	}

	@Override
	public List<User> Userlogin(String email, String password) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		example.createCriteria().andEmailEqualTo(email).andPasswordEqualTo(password);
		
		
		return userMapper.selectByExample(example);
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.insert(user);
	}

}
