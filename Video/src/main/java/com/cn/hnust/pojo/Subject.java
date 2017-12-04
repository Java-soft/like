package com.cn.hnust.pojo;

import java.util.List;

public class Subject {
    private Integer id;

    private String subjectName;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubjectName() {
        return subjectName;
    }

	

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	@Override
	public String toString() {
		return "Subject [id=" + id + ", subjectName=" + subjectName + "]";
	}

	
	
   
}