package com.cn.hnust.service.impl;  
  


import java.util.List;

import javax.annotation.Resource;



import org.springframework.stereotype.Service;  
  

import com.cn.hnust.mapping.AdminMapper;
import com.cn.hnust.pojo.Admin;
import com.cn.hnust.pojo.AdminExample;

import com.cn.hnust.service.AdminService;

  
@Service("AdminService")
public class AdminServiceImpl implements  AdminService{  
    @Resource    
    private AdminMapper AdminDao;    
        
    public Admin getAdminById(int id) {    
        return this.AdminDao.selectByPrimaryKey(id);  
    }

	@Override
	public List<Admin> findAll() {
		// TODO Auto-generated method stub
	
		List<Admin> findAllList=AdminDao.selectByExample(null);
		return findAllList;
	}

	

	@Override
	public List<Admin> login(String username, String password) {
		// TODO Auto-generated method stub
		AdminExample example=new AdminExample();
		example.createCriteria().andUsernameEqualTo(username).andPasswordEqualTo(password);
		
		return (List<Admin>) AdminDao.selectByExample(example);
	}

	@Override
	public Admin selectbyname(String name) {
		// TODO Auto-generated method stub
	
		AdminExample example=new AdminExample();
		example.createCriteria().andUsernameEqualTo(name);
		
		return  (Admin) AdminDao.selectbyname(example);
	}

	@Override
	public int addAdmin(Admin Admin) {
		// TODO Auto-generated method stub
		
		
		
		
		return AdminDao.insert(Admin);
	}

	
	
}