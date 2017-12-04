package com.cn.hnust.pojo;

import java.util.List;

public class Course {
    private Integer id;

    private String courseTitle;

    private Integer subjectId;

    private String courseDesc;
    private List<Video> videolist ;

	public Course() {
		super();
	}

	
	
	

	public Course(Integer id, String courseTitle, Integer subjectId, String courseDesc, List<Video> videolist) {
		super();
		this.id = id;
		this.courseTitle = courseTitle;
		this.subjectId = subjectId;
		this.courseDesc = courseDesc;
		this.videolist = videolist;
	}





	public List<Video> getVideolist() {
		return videolist;
	}





	public void setVideolist(List<Video> videolist) {
		this.videolist = videolist;
	}





	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public Integer getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}

	public String getCourseDesc() {
		return courseDesc;
	}

	public void setCourseDesc(String courseDesc) {
		this.courseDesc = courseDesc;
	}





	@Override
	public String toString() {
		return "Course [id=" + id + ", courseTitle=" + courseTitle + ", subjectId=" + subjectId + ", courseDesc="
				+ courseDesc + ", videolist=" + videolist + "]";
	}

	

	

    
    
}