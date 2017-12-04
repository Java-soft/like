package com.cn.hnust.base;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.mapping.BaseDao;
import com.cn.hnust.pojo.PageBean;
import com.cn.hnust.pojo.Video;

public class BaseServiceImpl<T> implements BaseService<T> {

	
	private BaseDao<T> basedao;
	
	
	public BaseDao<T> getBasedao() {
		return basedao;
	}


	public void setBasedao(BaseDao<T> basedao) {
		this.basedao = basedao;
	}


	@Override
	public List<T> selectALl() {
		// TODO Auto-generated method stub
		/*List<T>list=basedao.selectByExample(null);*/
		/*System.out.println(list+"++++++++++++++");*/
		List<T>list=basedao.selectAll();
		return  list;
	}


	@Override
	public List<T> SelectById(int id) {
		// TODO Auto-generated method stub
		return basedao.selectbyid(id);
		
	}


	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
	return	basedao.deleteByPrimaryKey(id);
		
	}


	@Override
	public int insert(T record) {
		// TODO Auto-generated method stub
		return basedao.insert(record);
		
	}


	@Override
	public int updateByPrimaryKey(T record) {
		// TODO Auto-generated method stub
		return basedao.updateByPrimaryKey(record);
		
	}


	@Override
	public List<T> selectbyinput(String search) {
		// TODO Auto-generated method stub
		return basedao.selectbyinput(search);
	}


	@Override
	public int deletemore(int[] id) {
		// TODO Auto-generated method stub
		
		return basedao.deletemore(id);
	}


	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return basedao.selectCount();
	}


	 @Override
	    public PageBean<T> findByPage(int currentPage) {
	        HashMap<String,Object> map = new HashMap<String,Object>();
	        PageBean<T> pageBean = new PageBean<T>();

	        //封装当前页数
	        pageBean.setCurrPage(currentPage);

	        //每页显示的数据
	        int pageSize=4;
	        pageBean.setPageSize(pageSize);

	        //封装总记录数
	        int totalCount = basedao.selectCount();
	        pageBean.setTotalCount(totalCount);

	        //封装总页数
	        double tc = totalCount;
	        Double num =Math.ceil(tc/pageSize);//向上取整
	        pageBean.setTotalPage(num.intValue());

	        map.put("start",(currentPage-1)*pageSize);
	        map.put("size", pageBean.getPageSize());
	        //封装每页显示的数据
	        List<T> lists = basedao.findByPage(map);
	        pageBean.setLists(lists);

	        return pageBean;
	    }


	@Override
	public List<T> findCourseBySubjectId(int id) {
		// TODO Auto-generated method stub
		return  basedao.findCourseBySubjectId(id);
	}


	@Override
	public T selectbyId(int id) {
		// TODO Auto-generated method stub
		return basedao.selectbyId(id);
	}


	@Override
	public List<T> selectbyspearkerId(int spearkerId) {
		// TODO Auto-generated method stub
		return basedao.selectbyspeakerId(spearkerId);
	}
}
