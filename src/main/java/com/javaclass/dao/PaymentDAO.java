package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.BucketVO;
import com.javaclass.domain.PayInfoVO;
import com.javaclass.domain.PaymentVO;

public interface PaymentDAO {
	public void insertPayment(PaymentVO vo);
	public int selectSum();
	PaymentVO selectUserInfo(int order_number);
	public int orderSeq();
	public int orderListSeq();
	
	//결제번호 주문정보에 업데이트
	public void updatePaymentNumber(PaymentVO vo);
	
	//결제번호 가져오기
	public int selectPayNumber();
	
	//결제정보 생성
	public void insertPayInfo(PayInfoVO payinfo);
		
	//BucketVO 사용
	public void insertBuyList(BucketVO vo);
	
	//결제 실패시 주문정보 삭제
	public void deleteOrder();
	
	//BucketMapper 사용!!
	public List<BucketVO> getBucketList();
}
