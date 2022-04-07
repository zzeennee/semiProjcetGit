package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.BucketVO;
import com.javaclass.domain.PayInfoVO;
import com.javaclass.domain.PaymentVO;

@Repository("paymentDAO")
public class PaymentDAOImpl implements PaymentDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertPayment(PaymentVO vo) {
		System.out.println("===> Mybatis insertPayment() 호출");
		mybatis.insert("PaymentDAO.insertPayment", vo);
	}
	
	public int selectSum() {
		System.out.println("===> Mybatis selectSum() 호출");
		return mybatis.selectOne("PaymentDAO.selectSum");
	}
	
	public PaymentVO selectUserInfo(int order_number) {
		System.out.println("===> Mybatis selectUserInfo() 호출");
		return mybatis.selectOne("PaymentDAO.selectUserInfo", order_number);
	}
	
	public int orderSeq() {
		System.out.println("===> Mybatis orderSeq() 호출");
		return mybatis.selectOne("PaymentDAO.orderSeq");
	
	}
	
	public int orderListSeq() {
		System.out.println("===> Mybatis orderListSeq() 호출");
		return mybatis.selectOne("PaymentDAO.orderListSeq");
	}
	

	public void insertBuyList(BucketVO vo) {
		System.out.println("===> Mybatis insertBuyList() 호출");
		mybatis.insert("PaymentDAO.insertBuyList", vo);
	
	}
	
	public void insertPayInfo(PayInfoVO payinfo) {
		System.out.println("===> Mybatis insertPayInfo() 호출");
		mybatis.insert("PaymentDAO.insertPayInfo", payinfo);
	
	}
	
	public int selectPayNumber() {
		System.out.println("===> Mybatis selectPayNumber() 호출");
		return mybatis.selectOne("PaymentDAO.selectPayNumber");
	}
	

	
	//BucketMapper 사용!!
	public List<BucketVO> getBucketList(){
		System.out.println("===> Mybatis getBucketList() 호출");
		return mybatis.selectList("BucketDAO.getBucketList");
	
	}
	
	//결제번호 주문정보에 업데이트
	public void updatePaymentNumber(PaymentVO vo) {
		System.out.println("===> Mybatis updatePaymentNumber() 호출");
		mybatis.update("PaymentDAO.updatePaymentNumber", vo);
	}
	
	//결제 실패시 주문정보 삭제
	public void deleteOrder() {
		System.out.println("===> Mybatis deleteOrder() 호출");
		mybatis.update("PaymentDAO.deleteOrder");
	}
	
}
