package com.cn.hnust.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Speaker;


import com.cn.hnust.service.SpeakerService;


@Controller
@RequestMapping("/speaker")
public class SpeakerController {
	@Autowired
   private SpeakerService service;
   private static final Logger logger=LoggerFactory.getLogger(SpeakerController.class);
	@RequestMapping("findallspeaker")
   public String findallspeaker(HttpServletRequest request,Model model){
		
	   List<Speaker>list=service.selectALl();
	   model.addAttribute("sp", list);
	  
		request.setAttribute("speaker",list ); 
	return "/speaker/speaker";
	}
	
	@RequestMapping("/TZ")//跳转
	   public String TZ(){
		
		 return "/speaker/speakerAdd";  
		   
	   }
	@RequestMapping("/TZ2")//跳转
	   public String TZ2(){
		
		 return "/speaker/speaker";  
		   
	   }
	 @RequestMapping("/selectbyID")  
	    public String selectbyID(HttpServletRequest request,Model model){  
		 
		 
		 int  id =Integer.parseInt(request.getParameter("id"));
	        List<Speaker>speaker= service.SelectById(id);
	      
	        model.addAttribute("speaker", speaker); 
	      
	        return "/speaker/speakerUpdate";        
}
	 
	 @RequestMapping("speakerDelete")
	 public String speakerdelete(HttpServletRequest request,int id){
		service.deleteByPrimaryKey(id);
		 
		 
		return "redirect:/speaker/findallspeaker";
		 
	 }
	 @RequestMapping("speakerUpdate")
		public String speakerUpdate(HttpServletRequest request,Speaker speaker){
		
		 System.out.println(speaker+"2222222222");
		 service.updateByPrimaryKey(speaker);
		 
		 return "redirect:/speaker/findallspeaker";
	 
	 }
	 
	@RequestMapping("speakeradd")
	public String speakerAdd(HttpServletRequest request,Speaker speaker){
		
		String tt=request.getParameter("speakerName");
		speaker.setSpeakerName(tt);
		
		String job=request.getParameter("speakerJob");
		
		speaker.setSpeakerJob(job);
		
	    String img=request.getParameter("headImgUrl");
	    speaker.setHeadImgUrl(img);
	
		String BB=request.getParameter("speakerDesc");
		speaker.setSpeakerDesc(BB);
		service.insert(speaker);
		
		 return "redirect:/speaker/findallspeaker";
		
		
		
	}
	 
	 
	 
}