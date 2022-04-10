package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.AdminChartVO;

public interface AdminChartService {
	
	//월별 회원 가입 차트
	public List<AdminChartVO> accountChart(AdminChartVO vo);
	
	//카테고리별 상품 등록 차트
	public List<AdminChartVO> adminChartProductCategory(AdminChartVO vo);
	
	//카테고리별 상품 판매 차트
	public List<AdminChartVO> adminChartProductSellCategory(AdminChartVO vo);	
}
