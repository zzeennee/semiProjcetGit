package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.BucketVO;

@Repository
public class BucketDAOImpl implements BucketDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//장바구니 리스트 불러오기
	public List<BucketVO> getBucketList(){
		System.out.println("===> Mybatis insertPayment() 호출");
		return mybatis.selectList("BucketDAO.getBucketList");
	}
	
	//장바구니에서 체크한 항목 삭제
	public void selectDelete(BucketVO vo) {
		System.out.println("===> Mybatis selectDelete() 호출");
		mybatis.delete("BucketDAO.selectDelete", vo);
	}
	
}
