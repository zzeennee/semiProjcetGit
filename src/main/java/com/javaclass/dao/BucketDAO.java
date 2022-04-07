package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.BucketVO;

public interface BucketDAO {
	List<BucketVO> getBucketList();
	
	void selectDelete(BucketVO vo);
}
