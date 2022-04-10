package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.BucketVO;
import com.javaclass.domain.BuylistVO;
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
	
	//장바구니 리스트 총합 출력
	public int selectSum() {
		System.out.println("===> Mybatis selectSum() 호출");
		return mybatis.selectOne("PaymentDAO.selectSum");
	}
	
	public PaymentVO selectUserInfo(int order_number) {
		System.out.println("===> Mybatis selectUserInfo() 호출");
		return mybatis.selectOne("PaymentDAO.selectUserInfo", order_number);
	}
	
	//주문번호를 주문정보에 업데이트
	public void updateBuylistNumber(PaymentVO vo) {
		System.out.println("===> Mybatis updateBuylistNumber() 호출");
		mybatis.update("PaymentDAO.updateBuylistNumber", vo);
	
	}
	
	//주문번호만 출력하기
	public int orderSeq() {
		System.out.println("===> Mybatis orderSeq() 호출");
		return mybatis.selectOne("PaymentDAO.orderSeq");
	
	}
	
	//상품목록리스트 번호만 출력하기
	public int orderListSeq() {
		System.out.println("===> Mybatis orderListSeq() 호출");
		return mybatis.selectOne("PaymentDAO.orderListSeq");
	}
	
	//구매리스트 삽입
	public void BuyListinsert(BuylistVO vo) {
		System.out.println("===> Mybatis BuyListinsert() 호출");
		mybatis.insert("PaymentDAO.BuyListinsert", vo);
	}
	
	
	//임시 구매리스트 삭제
	public void deleteBuyList() {
		System.out.println("===> Mybatis deleteBuyList() 호출");
		mybatis.delete("PaymentDAO.deleteBuyList");
	
	}
	
	//결제정보 생성
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
	
	//결제 진입 전에 해당 아이디에 있는 장바구니 목록 삭제
	public void deleteBucketList() {
		System.out.println("===> Mybatis deleteBucketList() 호출");
		mybatis.delete("PaymentDAO.deleteBucketList");
	}
	
	//빈 구매리스트 생성(번호만 생성)
	public void insertBuyListNumber() {
		System.out.println("===> Mybatis insertBuyListNumber() 호출");
		mybatis.insert("PaymentDAO.insertBuyListNumber");
	}
	
}
