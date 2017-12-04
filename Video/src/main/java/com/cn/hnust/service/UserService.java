package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.base.BaseService;

import com.cn.hnust.pojo.User;

public interface UserService extends BaseService<User> {

	
	User selelectbyemail(String email);
	User selelectbycode(String code);
	List<User> Userlogin(String email,String password); 
	int  addUser(User user);
}
