package com.cn.hnust.mapping;

import java.util.List;



import com.cn.hnust.pojo.User;
import com.cn.hnust.pojo.UserExample;


public interface UserMapper extends BaseDao<User> {
	User selectbyemail(UserExample example);

	User selectbycode(UserExample example);
	List<User> selectByExample(UserExample example);
}