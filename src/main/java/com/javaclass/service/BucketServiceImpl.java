package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.BucketDAO;
import com.javaclass.domain.BucketVO;

@Service
public class BucketServiceImpl implements BucketService {
	@Autowired
	private BucketDAO bucketDAO;

	
	//장바구니 리스트 불러오기
	public List<BucketVO> getBucketList(){
		return bucketDAO.getBucketList();
	}
	
	//장바구니에서 체크한 항목 삭제
	public void selectDelete(BucketVO vo) {
		bucketDAO.selectDelete(vo);
	}
	
}
