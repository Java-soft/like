package com.zhiyou.dao;

import java.util.Date;
import java.util.List;

import com.zhiyou.model.Blogtype;
import com.zhiyou.model.User;

import javafx.scene.chart.PieChart.Data;

public interface BaseDao<T> {

	
	void add(T t);

	List<T> findall();

	List<T> findById(Integer id);

List<T> selectbyemail(String email);

T selectbyId(Integer id);

void delete(int id);



void update(T t);

List<T> selectBId(T id);




List<T> selectMhcx(String date, String date2, String title);



List<T> mhcxofall(String title, String date, String date2, Blogtype blogtypeIdS);

List<T> mhcx(String title, Blogtype blogtype);

List<T> sxfandall();

List<T> viewfdall();



	
}
