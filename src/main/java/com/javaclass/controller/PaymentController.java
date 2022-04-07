package com.javaclass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.BucketVO;
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
		vo.setPrice((paymentService.selectSum()));
		
		//주문생성
		paymentService.insertPayment(vo);
		
		//주문번호 받기
		int order_number = paymentService.orderSeq();
		
		//구매목록 리스트 번호생성
		int buylist_number = paymentService.orderListSeq(); //리스트 번호
		List<BucketVO> buylist = paymentService.getBucketList(); ////BucketMapper 사용!!
		
		//구매목록 리스트 번호 삽입
		for(BucketVO list : buylist ) {			
			list.setBuynumber(buylist_number);			
			paymentService.insertBuyList(list);
			
		}		
		
		PaymentVO user = paymentService.selectUserInfo(order_number);
		
		
		m.addAttribute("pay", user);
		
		return "/paymentOrder/testpay";
	}
	
	@RequestMapping("payment_sucess.do")
	public void setUser(Model m, PaymentVO vo) {
		PaymentVO user = paymentService.selectUserInfo(vo.getOrder_number());
				
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
		
		//주문정보에 결제번호 업데이트
		paymentService.updatePaymentNumber(user);
		
		
		m.addAttribute("reUser", user);		
	}    
	
	@RequestMapping("payment_fail.do")
	public void paymentFail() {
		paymentService.deleteOrder();
	}               
}
