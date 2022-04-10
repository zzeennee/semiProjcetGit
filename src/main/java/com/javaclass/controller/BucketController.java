package com.javaclass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.BucketVO;
import com.javaclass.service.BucketService;

@Controller
@RequestMapping("/paymentOrder")
public class BucketController {
	@Autowired //DI 개념
	private BucketService bucketService;
	
	//장바구니 진입시 장바구니 리스트 불러오기
	@RequestMapping("bucket.do")
	public void selectBucket(Model m) {
			  
			  List<BucketVO> list = bucketService.getBucketList();
			  System.out.println("정상작동");

			  m.addAttribute("bucketList",list);
	}
	
	//장바구니에서 결제정보 입력으로 넘어갈때 장바구니 리스트 불러옴
	@RequestMapping("payment.do")
	public void select(Model m) {
			  
			  List<BucketVO> list = bucketService.getBucketList();
			  System.out.println("정상작동");
			  
			  m.addAttribute("bucketList", list);
			  
	}
	 
	 //장바구니 선택후 삭제
	 @RequestMapping("bdelete.do")
		public String deleteBucket(BucketVO vo) {
		 	bucketService.selectDelete(vo);
		 	return "redirect:bucket.do";
	  }
	 
	 
}
