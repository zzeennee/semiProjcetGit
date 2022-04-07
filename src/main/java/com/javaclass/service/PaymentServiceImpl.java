package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.PaymentDAO;
import com.javaclass.domain.BucketVO;
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
	
	//구매 리스트 생성
	public void insertBuyList(BucketVO vo) {
		paymentDAO.insertBuyList(vo);
	}
	
	public void deleteOrder() {
		paymentDAO.deleteOrder();
	}
	
	//BucketMapper 사용!!
	public List<BucketVO> getBucketList(){
		return paymentDAO.getBucketList();
	}
}
