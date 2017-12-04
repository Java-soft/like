package com.zhiyou.service;

import java.util.Date;
import java.util.List;

import com.zhiyou.model.Blogtype;
import com.zhiyou.model.User;

import javafx.scene.chart.PieChart.Data;
import sun.print.resources.serviceui;

public interface BaseService<T> {

	void add(T t);


	List<T> findall();
	List<T> sxfindall();

	List<T> viewfdall();
	List<T> selectById(Integer id);

	
	T selectbyId(Integer id);

	List<T> selectbyemail(String email);

	List<T> selectBId(T id);


	void delete(int id);

	void update(T t);


	List<T> selectMhcx(String date, String date2, String title);
	List<T> mhcxofall(String title,String date,String date2,Blogtype blogtypeIdS);
	List<T> mhcx(String title,Blogtype blogtype);
}
