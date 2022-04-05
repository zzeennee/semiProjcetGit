package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.AdminChartVO;

@Repository("adminchartDAO")
public class AdminChartDAOImpl {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<AdminChartVO> adminChartProductCategory(AdminChartVO vo){
		System.out.println("===> Mybatis adminChartProductCategory() 호출");
		return mybatis.selectList("adminChartMapper.countProductCategory");
	};

}
