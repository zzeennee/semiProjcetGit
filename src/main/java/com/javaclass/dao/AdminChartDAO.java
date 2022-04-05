package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.AdminChartVO;

public interface AdminChartDAO {
	
	public List<AdminChartVO> adminChartProductCategory(AdminChartVO vo);
}
