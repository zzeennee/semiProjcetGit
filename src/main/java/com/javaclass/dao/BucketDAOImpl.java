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
	
	//장바구니 목록 출력
	public List<BucketVO> getBucketList(){
		System.out.println("===> Mybatis insertPayment() 호출");
		return mybatis.selectList("BucketDAO.getBucketList");
	}
	
	public void selectDelete(BucketVO vo) {
		System.out.println("===> Mybatis insertPayment() 호출");
		mybatis.delete("BucketDAO.selectDelete", vo);
	}
}
