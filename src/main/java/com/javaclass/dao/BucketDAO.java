package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.BucketVO;

public interface BucketDAO {
	//장바구니 리스트 불러오기
	List<BucketVO> getBucketList();
	
	//장바구니에서 체크한 항목 삭제
	void selectDelete(BucketVO vo);
	
}
