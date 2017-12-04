package com.cn.hnust.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.junit.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cn.hnust.pojo.Course;
import com.cn.hnust.pojo.Speaker;
import com.cn.hnust.pojo.User;
import com.cn.hnust.pojo.Video;
import com.cn.hnust.service.CourseService;
import com.cn.hnust.service.SpeakerService;
import com.cn.hnust.service.VideoService;

@Controller
@RequestMapping("/video")
public class VideoController {
	@Autowired
	private VideoService service;
	@Autowired
	private SpeakerService speakerService;
	@Autowired
	private CourseService courseService;
	private static final Logger logger = LoggerFactory.getLogger(VideoController.class);

	@RequestMapping("findallvideo")
	public String findallvideo(HttpServletRequest request, Model model) {
		List<Video> list = service.selectALl();
		List<Speaker> ls = speakerService.selectALl();
		List<Course> course = courseService.selectALl();
		System.out.println(ls + "33333333");
		model.addAttribute("course", course);
		request.setAttribute("course", course);
		model.addAttribute("speaker", ls);
		request.setAttribute("speaker", ls);
		model.addAttribute("video", list);
		request.setAttribute("video", list);
		
		return "redirect:/video/main";
	}

	@RequestMapping("/TZ") // 跳转
	public String TZ() {

		return "/video/videoAdd";

	}
	

	@RequestMapping("showVideo")
	public String showVideo(HttpServletRequest request, Model model,Integer videoId,String subjectName) {
	Video video	=service.selectbyId(videoId);
	 int spearkerId= video.getSpearkerId();
	Speaker speaker= speakerService.selectbyId(spearkerId);
	int courseid=video.getCourseId();
	Course course=courseService.selectbyId(courseid);
		
	List<Video>listvideo=service.selectbyspearkerId(spearkerId);

	request.setAttribute("videoList", listvideo);
		request.setAttribute("subjectName",subjectName );
		request.setAttribute("speaker", speaker);
		request.setAttribute("video",video);
		request.setAttribute("course",course);
		
		System.out.println(subjectName+speaker+video+course+"last");
		
		return "/before/section";	
	}

	@RequestMapping("/TZ2") // 跳转
	public String TZ2(HttpServletRequest request, Model model) {
		List<Video> list = service.selectALl();
		List<Speaker> ls = speakerService.selectALl();
		List<Course> course = courseService.selectALl();
		System.out.println(ls + "33333333");
		model.addAttribute("course", course);
		request.setAttribute("course", course);
		model.addAttribute("speaker", ls);
		request.setAttribute("speaker", ls);
		model.addAttribute("video", list);
		request.setAttribute("video", list);

		return "/video/MHCX";

	}

	@RequestMapping("/selectbyID")
	public String selectbyID(HttpServletRequest request, Model model) {

		int id = Integer.parseInt(request.getParameter("id"));
		List<Video> video = service.SelectById(id);

		model.addAttribute("video", video);

		return "/video/videoUpdate";
	}
	
	@RequestMapping("/selectbys_ID")
	public String selectbys_ID(HttpServletRequest request, Model model,int id) {
		List<Video> video = service.SelectById(id);

		model.addAttribute("video", video);

		return "/video/videoUpdate";
	}

	@RequestMapping("/selectbyInput")
	public String selectbyInput(String search, Model model) {

		List<Video> video = service.selectbyinput(search);

		model.addAttribute("video", video);

		return "/video/MHCX";
	}

	@RequestMapping("videoDelete")
	public String Videodelete(HttpServletRequest request, int id) {
		service.deleteByPrimaryKey(id);

		return "redirect:/video/findallvideo";

	}

	@RequestMapping("deletemore")
	public String deletemore(HttpServletRequest request, int[] id) {
		service.deletemore(id);

		return "redirect:/video/findallvideo";

	}

	@RequestMapping("VideoUpdate")
	public String VideoUpdate(HttpServletRequest request, Video video) {

		service.updateByPrimaryKey(video);

		return "redirect:/video/findallvideo";

	}

	@RequestMapping("videoadd")
	public String videoAdd(HttpServletRequest request, Video video) {

		service.insert(video);

		return "redirect:/video/findallvideo";

	}
	 @RequestMapping("/main")
	    public String  main(@RequestParam(value="currentPage",
	    defaultValue="1",required=false)int currentPage,Model model){
	        model.addAttribute("pagemsg", service.findByPage(currentPage));//回显分页数据
	

	        System.out.println(model+"22222222222222");
	        return "video/base";
	    }
	
	
	
	
	
	
	
	
	

}