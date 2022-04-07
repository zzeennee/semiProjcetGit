package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.BucketVO;

public interface BucketService {
	List<BucketVO> getBucketList();
	
	void selectDelete(BucketVO vo);
}
