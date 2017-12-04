package com.zhiyou.service.impl;

import java.util.Date;
import java.util.List;

import com.zhiyou.dao.BaseDao;
import com.zhiyou.model.Blogtype;
import com.zhiyou.model.User;
import com.zhiyou.service.BaseService;

import javafx.scene.chart.PieChart.Data;

public class BaseServiceImpl<T> implements BaseService<T>{

	public BaseDao<T> baseDao;
	
	public void setBaseDao(BaseDao<T> baseDao) {
        this.baseDao = baseDao;
    }

	@Override
	public void add(T t) {
		// TODO Auto-generated method stub
	
	 baseDao.add(t);
	}

	@Override
	public List<T> findall() {
		// TODO Auto-generated method stub
		return baseDao.findall();
	}

	@Override
	public List<T>selectById(Integer id) {
		// TODO Auto-generated method stub
		return baseDao.findById(id);
	}

	@Override
	public List<T> selectbyemail(String email) {
		// TODO Auto-generated method stub
		return baseDao.selectbyemail(email);
		
	}

	@Override
	public T selectbyId(Integer id) {
		// TODO Auto-generated method stub
		return baseDao.selectbyId(id);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		baseDao.delete(id);
	}

	@Override
	public void update(T t) {
		// TODO Auto-generated method stub
		baseDao.update(t);
	}

	@Override
	public List<T> selectBId(T id) {
		// TODO Auto-generated method stub
		return baseDao.selectBId(id);
	}


	@Override
	public List<T> selectMhcx(String date, String date2, String title) {
		// TODO Auto-generated method stub
		return baseDao.selectMhcx(date, date2, title);
	}

	@Override
	public List<T> mhcxofall(String title, String date, String date2, Blogtype blogtypeIdS) {
		// TODO Auto-generated method stub
		return baseDao.mhcxofall(title,date,date2,blogtypeIdS);
	}

	@Override
	public List<T> mhcx(String title, Blogtype blogtype) {
		// TODO Auto-generated method stub
		return baseDao.mhcx(title, blogtype);
	}

	@Override
	public List<T> sxfindall() {
		// TODO Auto-generated method stub
		return baseDao.sxfandall();
	}

	@Override
	public List<T> viewfdall() {
		// TODO Auto-generated method stub
		return baseDao.viewfdall();
	}

	
	
	
}
