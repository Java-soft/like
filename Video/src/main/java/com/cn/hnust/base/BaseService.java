package com.cn.hnust.base;

import java.util.List;

import com.cn.hnust.pojo.PageBean;

public interface BaseService<T> {

	public List<T> selectbyinput(String search);
	public List<T> selectALl();

	public List<T> SelectById(int id);
	T selectbyId(int id);

	int deleteByPrimaryKey(Integer id);
	int deletemore(int[] id);

	int insert(T record);

	int updateByPrimaryKey(T record);

	 int selectCount();
	 PageBean<T> findByPage(int currentPage);
   List<T> findCourseBySubjectId(int id); 
   List<T>selectbyspearkerId(int spearkerId);

}
