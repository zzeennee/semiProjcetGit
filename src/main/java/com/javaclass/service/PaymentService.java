package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.BucketVO;
import com.javaclass.domain.PayInfoVO;
import com.javaclass.domain.PaymentVO;

public interface PaymentService {
	
	void insertPayment(PaymentVO vo);
	int selectSum();
	PaymentVO selectUserInfo(int order_number);
	int orderSeq();
	int orderListSeq();
	void insertBuyList(BucketVO vo);
	
	//결제번호 주문정보에 업데이트
	void updatePaymentNumber(PaymentVO vo);
	
	//결제번호 가져오기
	int selectPayNumber();
	
	//결제정보 생성
	void insertPayInfo(PayInfoVO payinfo);
	
	//결제 실패시 주문정보 삭제
	void deleteOrder();
	
	//BucketMapper 사용!!
	List<BucketVO> getBucketList();
	
	

}
