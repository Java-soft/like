package com.cn.hnust.pojo;

import java.util.List;



public class Video {
    private Integer id;

    private String title;

    private Integer time;

    private Integer spearkerId;

    private Integer courseId;

    private String videoUrl;

    private String imageUrl;

    private Integer playNum;

    private String detail;
    
    private  Speaker  speaker;
    private  Course  course;
  
  


    
    


	public Speaker getSpeaker() {
		return speaker;
	}

public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}



	public Course getCourse() {
		return course;
	}



	public void setCourse(Course course) {
		this.course = course;
	}







	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public Integer getSpearkerId() {
        return spearkerId;
    }

    public void setSpearkerId(Integer spearkerId) {
        this.spearkerId = spearkerId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl == null ? null : videoUrl.trim();
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl == null ? null : imageUrl.trim();
    }

    public Integer getPlayNum() {
        return playNum;
    }

    public void setPlayNum(Integer playNum) {
        this.playNum = playNum;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

	@Override
	public String toString() {
		return "Video [id=" + id + ", title=" + title + ", time=" + time + ", spearkerId=" + spearkerId + ", courseId="
				+ courseId + ", videoUrl=" + videoUrl + ", imageUrl=" + imageUrl + ", playNum=" + playNum + ", detail="
				+ detail + "]";
	}
    
}