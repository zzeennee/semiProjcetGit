package com.javaclass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.BucketVO;
import com.javaclass.domain.BuylistVO;
import com.javaclass.domain.PayInfoVO;
import com.javaclass.domain.PaymentVO;
import com.javaclass.service.PaymentService;

@Controller
@RequestMapping("/paymentOrder")
public class PaymentController {
	
	@Autowired //DI 개념
	private PaymentService paymentService;
	
	@RequestMapping("savePayment.do")
	public String insertPayment(PaymentVO vo, Model m) {
		
		//값 셋팅
		vo.setPrice((paymentService.selectSum()+2500));
		
		//빈 구매리스트 번호 생성
		paymentService.insertBuyListNumber();
				
		//구매리스트 번호 받아오기
		int buylist_number = paymentService.orderListSeq(); 
		
		System.out.println(buylist_number);
		
		//주문정보 생성
		paymentService.insertPayment(vo);
		
		//주문번호 받기
		int order_number = paymentService.orderSeq();
		
		System.out.println(order_number);
		
		
		//BucketMapper 사용!!
		//장바구니 상품리스트 가져오기!! //아이디 사용하기
		List<BucketVO> buylist = paymentService.getBucketList(); 
		System.out.println(order_number);
		
		//구매목록 리스트 객체생성
		BuylistVO buylistVO = new BuylistVO();
		
		System.out.println(order_number);
		//구매목록 객체생성 후 구매리스트 번호 삽입 //DB저장 아님!!
		//buylistVO.setList_number(buylist_number);
		
		//구매목록 리스트 정보 삽입
		for(BucketVO list : buylist) {
			
				buylistVO.setProduct_seq(list.getProduct_number());
				buylistVO.setProduct_amount(list.getProduct_amount());				
				
				paymentService.BuyListinsert(buylistVO);
		}		
		
	
		//주문번호에 맞는 주문정보 가져오기
		PaymentVO user = paymentService.selectUserInfo(order_number);
		
		//주문정보에 주문리스트번호 삽입
		user.setBuylist_number(buylist_number);
		
		
		//주문정보에 주문리스트번호 업데이트(DB저장)
		paymentService.updateBuylistNumber(user);
		 
		m.addAttribute("pay", user);
		
		//구매번호 생성을 위한 임시 구매리스트 테이블 삭제
		//paymentService.deleteBuyList();
		
		return "/paymentOrder/testpay";
	}
	
	@RequestMapping("payment_sucess.do")
	public void setUser(Model m, PaymentVO vo) {
		//주문번호에 맞는 주문정보 불러오기
		PaymentVO user = paymentService.selectUserInfo(vo.getOrderdata_seq());
				
		//결제정보 등록 시작
		PayInfoVO payinfo = new PayInfoVO();
		payinfo.setPay_name(user.getSender_name());
		payinfo.setPay_email(user.getSender_email());
		payinfo.setPay_price(user.getPrice());
		payinfo.setPay_select("card");
		
		paymentService.insertPayInfo(payinfo);
		//결제정보 등록 종료
		
		//결제번호 가져오기
		int pay_number = paymentService.selectPayNumber();
		
		//결제번호 등록
		user.setPayment_number(pay_number);
		System.out.println(user.getPayment_number());
		System.out.println(user.getOrderdata_seq());
		
		//주문정보에 결제번호 업데이트
		paymentService.updatePaymentNumber(user);
		
		//장바구니 목록 리스트 삭제 (id조건 걸기)
		paymentService.deleteBucketList();
		
		
		m.addAttribute("reUser", user);		
	}    
	
	@RequestMapping("payment_fail.do")
	public void paymentFail() {
		paymentService.deleteOrder();
	}               
}
