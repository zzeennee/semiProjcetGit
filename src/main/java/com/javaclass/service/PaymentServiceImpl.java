package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.PaymentDAO;
import com.javaclass.domain.BucketVO;
import com.javaclass.domain.BuylistVO;
import com.javaclass.domain.PayInfoVO;
import com.javaclass.domain.PaymentVO;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;

	public void insertPayment(PaymentVO vo) {

		paymentDAO.insertPayment(vo);
	}
	
	public int selectSum() {
		return paymentDAO.selectSum();
	}
	
	public PaymentVO selectUserInfo(int order_number) {
		return paymentDAO.selectUserInfo(order_number);
	}
	
	public int orderSeq() {
		return paymentDAO.orderSeq();
	}
	
	public int orderListSeq() {
		return paymentDAO.orderListSeq();
	}
	
	//결제번호 주문정보에 업데이트
	public void updatePaymentNumber(PaymentVO vo) {
		paymentDAO.updatePaymentNumber(vo);
	}
	
	//결제정보 생성
	public void insertPayInfo(PayInfoVO payinfo) {
		paymentDAO.insertPayInfo(payinfo);
	}
	
	//결제번호 가져오기
	public int selectPayNumber() {
		return paymentDAO.selectPayNumber();
	}
	
	//구매 리스트 삽입
	public void BuyListinsert(BuylistVO vo) {
		paymentDAO.BuyListinsert(vo);
	}
	
	public void updateBuylistNumber(PaymentVO vo) {
		paymentDAO.updateBuylistNumber(vo);
	}
	
	//구매 리스트 업데이트(데이터 삽입)
	public void deleteBuyList() {
		paymentDAO.deleteBuyList();
	}
	
	//결제 실패시 주문정보 삭제 
	public void deleteOrder() {
		paymentDAO.deleteOrder();
	}
	
	//빈 구매리스트 생성(번호만 생성)
	public void insertBuyListNumber() {
		paymentDAO.insertBuyListNumber();
	}
	
	//결제 진입 전에 해당 아이디에 있는 장바구니 목록 삭제
	public void deleteBucketList() {
		paymentDAO.deleteBucketList();
	}
	
	//BucketMapper 사용!!
	public List<BucketVO> getBucketList(){
		return paymentDAO.getBucketList();
	}
}
