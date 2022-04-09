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
	
	//월별 회원 가입 차트
	public List<AdminChartVO> accountChart(AdminChartVO vo){
		return adminchartDAO.accountChart(vo);
	};
	
	//카테고리별 상품 등록 차트
	public List<AdminChartVO> adminChartProductCategory(AdminChartVO vo){
		return adminchartDAO.adminChartProductCategory(vo);
	};
	
	//카테고리별 상품 판매 차트
	public List<AdminChartVO> adminChartProductSellCategory(AdminChartVO vo){
		return adminchartDAO.adminChartProductSellCategory(vo);
	};
	
}
