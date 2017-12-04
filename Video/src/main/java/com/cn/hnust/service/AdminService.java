package com.cn.hnust.service;  
  


import java.util.List;



import com.cn.hnust.pojo.Admin;  
  
public interface AdminService {  
    public Admin getAdminById(int id);

  Admin selectbyname(String name);
   List<Admin> login(String username,String password);
	public List<Admin> findAll();  
  int addAdmin(Admin Admin);
}