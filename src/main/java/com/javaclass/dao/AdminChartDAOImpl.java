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
	
	//월별 회원 가입 차트
		public List<AdminChartVO> accountChart(AdminChartVO vo){
			System.out.println("===> Mybatis accountChart() 호출");
			return mybatis.selectList("adminChartMapper.accountChart");
		};
		
	//카테고리별 상품 등록 차트
	public List<AdminChartVO> adminChartProductCategory(AdminChartVO vo){
		System.out.println("===> Mybatis adminChartProductCategory() 호출");
		return mybatis.selectList("adminChartMapper.countProductCategory");
	};
	
	//카테고리별 상품 판매 차트
	public List<AdminChartVO> adminChartProductSellCategory(AdminChartVO vo){
		System.out.println("===> Mybatis adminChartProductSellCategory() 호출");
		return mybatis.selectList("adminChartMapper.productSellChart");
	};
	
}

