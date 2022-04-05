package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.AdminBoardDAOImpl;
import com.javaclass.dao.AdminChartDAOImpl;
import com.javaclass.domain.AdminChartVO;

@Service ("adminchartService")
public class AdminChartServiceImpl implements AdminChartService {
	
	@Autowired
	AdminChartDAOImpl adminchartDAO;
	
	public List<AdminChartVO> adminChartProductCategory(AdminChartVO vo){
		return adminchartDAO.adminChartProductCategory(vo);
	};
	
}
