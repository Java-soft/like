package com.cn.hnust.controller;



import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.cn.hnust.pojo.Admin;
import com.cn.hnust.service.AdminService;


@Controller  
@RequestMapping("/Admin")  
public class AdminController {
	  @Resource  
	    private AdminService AdminService;  
	    private static final Logger logger=LoggerFactory.getLogger(AdminController.class);
	    @RequestMapping("/showAdmin")  
	    public String toIndex(HttpServletRequest request,Model model){  
	        int AdminId = Integer.parseInt(request.getParameter("id"));  
	        Admin Admin = this.AdminService.getAdminById(AdminId);  
	        model.addAttribute("Admin", Admin); 
	      
	        return "/showAdmin";  
	    }
	    @RequestMapping("/addAdmin")
	    public String addAdmin(Admin Admin,HttpServletRequest request){
	    
	    	Admin Admin2=new Admin();
	    	String pw=request.getParameter("password");
	    	String sn=request.getParameter("username");
	    	Admin2.setPassword(pw);
	    	Admin2.setUsername(sn);
	    	
	     /*   logger.info(sn);//打印语句
*/	    	
	    	AdminService.addAdmin(Admin2);
	    	
	    	return "/showAdmin";  
	    	
	    }
	   @RequestMapping("/selectAll")
	    public String getAllAdmin(HttpServletRequest request,Model model){
			List<Admin> Admin=AdminService.findAll();
			model.addAttribute("Admin", Admin);
			request.setAttribute("Admin", Admin); 
		   return "selectAll";
}
	   @RequestMapping("/TZ")//通过name查询Admin
	   public String TZ(){
		
		 return "/addAdmin";  
		   
	   }
	   
	   @RequestMapping("/sbm")//通过name查询Admin
	   public String sbm(HttpServletRequest request ,Model model){
		String Name=request.getParameter("username");
		Admin Admin=AdminService.selectbyname(Name);
	
		model.addAttribute("Admin",Admin);
		 return "/showAdmin";  
		   
	   }
	   
	    @RequestMapping("/login")
	    public String login(HttpServletRequest request ,Model model){
	   String AdminName= request.getParameter("username");
		String passWord= request.getParameter("password");
	    	Admin Admin=this.AdminService.selectbyname(AdminName);
	    
	    	
	    	if(Admin==null) {
				System.out.println("没有该用户 ,赶快注册吧");
				return "/addAdmin";
			}
	
	    	else{
			
				if (passWord.equals(((Admin) Admin).getPassword())&&AdminName.equals(((Admin) Admin).getUsername())) {
					System.out.println("登录成功");
					request.getSession().setAttribute("Adminname", "AdminName");
					model.addAttribute("Admin", Admin);  
				
					 return "redirect:/video/findallvideo";
				}
				else {
					System.out.println("密码错误");
					return "/addAdmin";
				}
			
	    	}
	    	
	    	
	    	
	    }
	   
	    
}
