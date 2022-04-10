package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.BucketVO;
import com.javaclass.domain.BuylistVO;
import com.javaclass.domain.PayInfoVO;
import com.javaclass.domain.PaymentVO;

public interface PaymentDAO {
	public void insertPayment(PaymentVO vo);
	public int selectSum();
	PaymentVO selectUserInfo(int order_number);
	public int orderSeq();
	public int orderListSeq();
	
	//주문번호를 주문정보에 업데이트
	public void updateBuylistNumber(PaymentVO vo);
	
	//결제번호 주문정보에 업데이트
	public void updatePaymentNumber(PaymentVO vo);
	
	//결제번호 가져오기
	public int selectPayNumber();
	
	//결제정보 생성
	public void insertPayInfo(PayInfoVO payinfo);
	
	//구매리스트 저장
	public void BuyListinsert(BuylistVO vo);
		
	//임시 구매리스트 삭제
	public void deleteBuyList();
	
	//결제 실패시 주문정보 삭제
	public void deleteOrder();
	
	//BucketMapper 사용!!
	public List<BucketVO> getBucketList();
	
	//결제 진입 전에 해당 아이디에 있는 장바구니 목록 삭제
	public void deleteBucketList();
	
	//빈 구매리스트 생성(번호만 생성)
	public void insertBuyListNumber(); 
}
