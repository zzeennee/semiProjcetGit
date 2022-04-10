package com.javaclass.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.AdminProductVO;
import com.javaclass.service.AdminProductService;

@Controller
public class homeController {

	@Autowired
	private AdminProductService productService;
	// 상품 목록
	@RequestMapping("/")
	public void GetProductListHome(AdminProductVO vo, Model model) {
		model.addAttribute("admin_ProductList", productService.adminGetProductList(vo));
		System.out.println("여기 들어왔음~`" + productService.adminGetProductList(vo));
	}
	
	@RequestMapping("/homePage/store.do")
	public void GetProductListStrore(AdminProductVO vo, Model model) {
		// 뷰 페이지 지정 (1) ModelAndView (2) void (3) String
		// 뷰로 데이터 전송 (1) ModelAndView (2) /(3) Model
		model.addAttribute("admin_ProductList", productService.adminGetProductList(vo));
		System.out.println("여기 들어왔음~`" + productService.adminGetProductList(vo));
	}


}
