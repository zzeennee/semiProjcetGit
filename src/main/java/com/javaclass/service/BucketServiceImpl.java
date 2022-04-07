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

	public List<BucketVO> getBucketList(){
		return bucketDAO.getBucketList();
	}
	
	public void selectDelete(BucketVO vo) {
		bucketDAO.selectDelete(vo);
	}
}
