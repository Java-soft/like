package com.cn.hnust.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Course;
import com.cn.hnust.pojo.Subject;
import com.cn.hnust.pojo.User;
import com.cn.hnust.pojo.Video;
import com.cn.hnust.service.CourseService;
import com.cn.hnust.service.SubjectService;
import com.cn.hnust.service.VideoService;


@Controller
@RequestMapping("/course")
public class CourseController {
	@Autowired
   private CourseService service;
	@Autowired
	private VideoService videoService;
	@Autowired
	private SubjectService subjectService;
   private static final Logger logger=LoggerFactory.getLogger(CourseController.class);
	@RequestMapping("findallcourse")
   public String findallcourse(HttpServletRequest request,Model model){
	   List<Course>list=service.selectALl();
	 
	   model.addAttribute("course", list);
		request.setAttribute("course",list ); 
	return "/course/course";
	}
	@RequestMapping("findallcourse1")
	   public String findallcourse1(HttpServletRequest request,Model model,int subjectId){
		 
		   
		   List<Subject>list2=subjectService.SelectById(subjectId);
		List<Course> course=service.findCourseBySubjectId(subjectId);
		
		model.addAttribute("Subject",list2.get(0));
		
			request.setAttribute("course",course); 
System.out.println(course);
		return "/before/course";
		}
	@RequestMapping("/TZ")//跳转
	   public String TZ(){
		
		 return "/course/courseAdd";  
		   
	   }
	 @RequestMapping("/selectbyID")  
	    public String selectbyID(HttpServletRequest request,Model model){  
		 
		 
		 int  id =Integer.parseInt(request.getParameter("id"));
	        List<Course>course= service.SelectById(id);
	      
	        model.addAttribute("course", course); 
	      
	        return "/course/courseUpdate";        
}
	 
	 @RequestMapping("courseDelete")
	 public String coursedelete(HttpServletRequest request,int id){
		service.deleteByPrimaryKey(id);
		 
		 
		return "redirect:/course/findallcourse";
		 
	 }
	 @RequestMapping("courseUpdate")
		public String courseUpdate(HttpServletRequest request,Course course){
		
		 service.updateByPrimaryKey(course);
		 
		 return "redirect:/course/findallcourse";
	 
	 }
	 
	@RequestMapping("courseadd")
	public String courseadd(HttpServletRequest request,Course course){
		
		service.insert(course);
		
		 return "redirect:/course/findallcourse";
		
		
		
	}
	 
	 
	 
}