package com.cn.hnust.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Provider.Service;
import java.text.BreakIterator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.constraints.Null;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cn.hnust.mapping.UserMapper;
import com.cn.hnust.pojo.Speaker;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.AdminService;
import com.cn.hnust.service.UserService;
import com.cn.hnust.util.ImageCut;
import com.cn.hnust.util.JavaEmailSender;
import com.cn.hnust.util.MyBatisUtil;

import mail.MailSenderInfo;

@Controller  
@RequestMapping("/user")  
public class UserController {
	  @Resource  
	    private UserService userService;  
	  @Autowired
	    private ServletContext servletContext;
	    private static final Logger logger=LoggerFactory.getLogger(UserController.class);
	   /* @RequestMapping("/showUser")  
	    public String toIndex(HttpServletRequest request,Model model){  
	        int userId = Integer.parseInt(request.getParameter("id"));  
	        User user = this.userService.getUserById(userId);  
	        model.addAttribute("user", user); 
	      
	        return "/showUser";  
	    }*/
	    @RequestMapping("/addUser")
	    public String addUser(User user,HttpServletRequest request){
	    
	    	User user2=new User();
	    	String pw=request.getParameter("password");
	    	String sn=request.getParameter("email");
	    	user2.setPassword(pw);
	    	user2.setEmail(sn);
	    	String a=Integer.toString(1);
	    	
	    	user2.setCode(a);
	        logger.info(sn);//打印语句
	    	
	    	userService.addUser(user2);
	    	
	    	return "/showUser";  
	    	
	    }
	    
	    @RequestMapping("/ggb")
	    public String ggb(User user,HttpServletRequest request){
	   
        String em= (String) request.getSession().getAttribute("email");
		
		User user1=userService.selelectbyemail(em);
	
		request.setAttribute("user", user1);
		return "/before/reset_password";  
	    	
	    }
	    
	    @RequestMapping("/gb")
	    public String gm(User user,HttpServletRequest request){
	    String pString=request.getParameter("password");
        String em= (String) request.getSession().getAttribute("email");
		
		User user1=userService.selelectbyemail(em);
		user1.setPassword(pString);
		userService.updateByPrimaryKey(user1);
		System.out.println("修改成功");
		return "redirect:/user/Selectbyemail";
	    	
	    }
	    @RequestMapping("/Selectbyemail")//通过邮箱查询
		   public String Selectbyemail(HttpServletRequest request ,Model model){
			
			String em= (String) request.getSession().getAttribute("email");
			
			User user=userService.selelectbyemail(em);
			model.addAttribute("user",user);
			request.setAttribute("user", user);
			
			 return "/before/my_profile";  
			   
		   }
	    
	  /**
	     * 发送邮件
	     * @return
	     * @throws Exception
	     */
	    @RequestMapping(value="/sendEmail",produces="application/json;charset=UTF-8")
	    @ResponseBody
	    public Object sendEmail(HttpServletRequest request)throws Exception{
	        Map<String,String> map = new HashMap<String,String>();
	        String msg = "ok";      //发送状态
	        String EMAIL = request.getParameter("email");                 //对方邮箱
	        User user=userService.selelectbyemail(EMAIL);
	        
	        if (user==null) {
	        	User user2=new User();
		    	String pw=request.getParameter("password");
		    	String sn=request.getParameter("email");
		    	user2.setPassword(pw);
		    	user2.setEmail(sn);
		    	String a=Integer.toString(1);
		    	
		    	user2.setCode(a);
		      
		    	
		    	userService.addUser(user2);
		    String TITLE = "鑫晨科技有限公司";                   //标题
	        String CONTENT = "恭喜您已经成功获得本公司的百分之50股份   请快速领取   并获得称号  小可爱     账号为:5458456387232";               //内容
	        JavaEmailSender.sendEmail(EMAIL, TITLE, CONTENT);
	        map.put("result", msg);
	        System.out.println("注册成功");
	        return map;}
	        else {
	        	System.out.println("用户已存在哦，快去登录吧");
	        	return user;
			}
			
	    }

	  /*  
	   @RequestMapping("/selectAll")
	    public String selectAll(HttpServletRequest request,Model model){
			List<User> user=userService.selectALl();
			model.addAttribute("user", user);
			request.setAttribute("user", user); 
			 return "/before/my_profile";  
			 
}*/
	   
	   @RequestMapping("/TZ")//通过name查询user
	   public String TZ(){
		
		 return "/addUser";  
		   
	   }
	   @RequestMapping("/TZ2")
	   public String TZ2(){
		
		 return "/before/index1";  
		   
	   }
	   
	   @RequestMapping("UserUpdate")
		public String speakerUpdate(HttpServletRequest request,User user){
		 
		   
		userService.updateByPrimaryKey(user);
		
		 
		 return "/before/change_profile";  
	 
	 } 
	   @RequestMapping("userUpdate")
		public String speakerupdate(HttpServletRequest request,User user){
		 
		   
		userService.updateByPrimaryKey(user);
		
		 
		 return "/before/my_profile";  
	 
	 } 
	   @RequestMapping("/Selectbemail")//通过邮箱查询
	   public String Selectbemail(HttpServletRequest request ,Model model){
		
		String em= (String) request.getSession().getAttribute("email");
		
		User user=userService.selelectbyemail(em);
		model.addAttribute("user",user);
		request.setAttribute("user", user);
		
		 return "/before/reset_password";  
		   
	   }
	   @RequestMapping("/Sbemail")//通过邮箱查询
	   public String Sbemail(HttpServletRequest request ,Model model){
		
		String em= (String) request.getSession().getAttribute("email");
		
		User user=userService.selelectbyemail(em);
		model.addAttribute("user",user);
		request.setAttribute("user", user);
		
		 return "/before/change_profile";  
		   
	   }
	   @RequestMapping("/Sbyemail")//通过邮箱查询
	   public String Sbyemail(HttpServletRequest request ,Model model){
		
		String em= (String) request.getSession().getAttribute("email");
		
		User user=userService.selelectbyemail(em);
		model.addAttribute("user",user);
		request.setAttribute("user", user);
		
		return "/before/change_avatar";
		   
	   }
	   
	   @RequestMapping("/Sebyemail")//通过邮箱查询
	   public String Sebyemail(HttpServletRequest request ,Model model,@RequestParam("image_file") MultipartFile file){
		
		String em= (String) request.getSession().getAttribute("email");
		
		User user=userService.selelectbyemail(em);
		
		
		
		if (!file.isEmpty()) {
            try {
                // getRealPath() 取得 WEB-INF 所在文件夹路径
                // 如果参数是 "/temp", 当 temp 存在时返回 temp 的本地路径, 不存在时返回 null/temp (无效路径)
                String path = servletContext.getRealPath("") + File.separator + file.getOriginalFilename();
               
                FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(path));
              user.setImgurl(path);
          	userService.updateByPrimaryKey(user);
             
      		float x1 = 0,x2=0,y1=0,y2=0,width=0;
    		boolean isCut =false;
    		if(null!=request.getParameter("x1")&&!"".equals(request.getParameter("x1"))){
    			x1= Float.parseFloat(request.getParameter("x1"));
    			y1= Float.parseFloat(request.getParameter("y1"));
    			x2= Float.parseFloat(request.getParameter("x2"));
    			y2= Float.parseFloat(request.getParameter("y2"));
    			width= x2-x1;
    			isCut=true;
    		}
   
    		
    //裁剪图片
    		if(isCut){
    			ImageCut imageCut = new ImageCut();  
    	
    		 imageCut.cutImage(path, (int)x1, (int)y1, (int)width, (int)width);
    		}		
      		
            } catch (IOException e) {
                e.printStackTrace();
            }
            model.addAttribute("user",user);
      		request.setAttribute("user", user);
        }return "/before/change_avatar";
		
		
		   
	   }
	   
	   
	   
	   
	   
	   
	   
	    @RequestMapping("/Userlogin")
	    public String Userlogin(HttpServletRequest request ,Model model){
	   String Email= request.getParameter("email");
		String passWord= request.getParameter("password");
		
	    	User user=this.userService.selelectbyemail(Email);
	       System.out.println(user+"wdqwdqw");
	       if (user.getEmail()==null) {
	    	   System.out.println("没有该用户,赶快注册吧");
				return "/before/list";
		}else {
			
		
	    	
	    	if (user.getCode()==null) {
				System.out.println("没有该用户code,赶快注册吧");
				return "/index";
			}else {
					
			if (passWord.equals(((User) user).getPassword())&&Email.equals(((User) user).getEmail())) {
				System.out.println("登录成功");
				request.getSession().setAttribute("email",Email);
				model.addAttribute("user", user);  
			
				 return "/before/my_profile";
			}
			else {
				System.out.println("密码错误");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
				return "/addUser";
			}

  	}
	    	
	    }
	   
	    }
	    @RequestMapping("/userlogin")
	    public String userlogin(HttpServletRequest request ,Model model){
	   String Email= request.getParameter("email");
		String passWord= request.getParameter("password");
		
	    	User user=this.userService.selelectbyemail(Email);
	       System.out.println(user+"wdqwdqw");
	       if (user.getEmail()==null) {
	    	   System.out.println("没有该用户,赶快注册吧");
				return "/before/list";
		}else {
			
		
	    	
	    	if (user.getCode()==null) {
				System.out.println("没有该用户code,赶快注册吧");
				return "/index";
			}else {
					
			if (passWord.equals(((User) user).getPassword())&&Email.equals(((User) user).getEmail())) {
				System.out.println("登录成功");
				request.getSession().setAttribute("email",Email);
				model.addAttribute("user", user);  
			
				 return "/before/list";
			}
			else {
				System.out.println("密码错误");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
				return "/addUser";
			}

  	}
	    	
	    }
	    
	    
}}
