package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.BucketVO;
import com.javaclass.domain.BuylistVO;
import com.javaclass.domain.PayInfoVO;
import com.javaclass.domain.PaymentVO;

public interface PaymentService {
	
	void insertPayment(PaymentVO vo);
	int selectSum();
	PaymentVO selectUserInfo(int order_number);
	int orderSeq();
	int orderListSeq();
	
	//주문번호를 주문정보에 업데이트
	void updateBuylistNumber(PaymentVO vo);
	
	//구매리스트 저장
	void BuyListinsert(BuylistVO vo);
	
	//임시 구매리스트 삭제
	void deleteBuyList();
	
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
	
	//결제 진입 전에 해당 아이디에 있는 장바구니 목록 삭제
	void deleteBucketList();
	
	//빈 구매리스트 생성(번호만 생성)
	void insertBuyListNumber();
	
	

}
