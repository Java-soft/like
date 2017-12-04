package com.cn.hnust.mapping;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.hnust.pojo.Video;

public interface BaseDao<T> {

	int deleteByPrimaryKey(Integer id);

	int insert(T record);

	int insertSelective(T record);

	T selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(T record);

	int updateByPrimaryKey(T record);

	List<T> selectAll();
	List<T> selectbyid(int id);

	List<T> selectbyinput(String search);
    

	int deletemore(int[] id);


	/**
     * 查询用户记录总数
     * @return
     */
	    int selectCount();
	   
	    /**
	     * 分页操作，调用findByPage limit分页方法
	     * @param map
	     * @return
	     */
	    List<T> findByPage(HashMap<String,Object>  map);

		List<T> findCourseBySubjectId(@Param("id") int id);
		List<T> selectbyspeakerId(@Param("spearkerId")int spearkerId);

		T selectbyId(int id);
	
}
