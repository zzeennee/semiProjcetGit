package com.javaclass.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.AdminProductVO;
import com.javaclass.service.AdminProductService;

@Controller
@RequestMapping("/admin")
public class AdminProductController {

	@Autowired
	private AdminProductService productService;

	// -------------------------------------------------
	// 관리자 상품 작성
	@RequestMapping("/adminProductRegister.do")
	public void registerProduct() {
	}

	// 관리자 상품 저장
	@RequestMapping(value = "/adminProductSave.do")
	public String insertProduct(AdminProductVO vo) throws IOException {
		productService.adminInsertProduct(vo);
		return "redirect:adminProductList.do";
	}

	// 관리자 상품 목록
	@RequestMapping(value = { "/adminProductList.do"})
	public void GetProductList(AdminProductVO vo, Model model) {
		// 뷰 페이지 지정 (1) ModelAndView (2) void (3) String
		// 뷰로 데이터 전송 (1) ModelAndView (2) /(3) Model
		model.addAttribute("admin_ProductList", productService.adminGetProductList(vo));
		System.out.println("여기 들어왔음~`" + productService.adminGetProductList(vo));
	}

	// 관리자 상품 상세 조회
	@RequestMapping(value = { "/adminProductChange.do", "/adminProductGetBoard.do" })
	public void getProduct(AdminProductVO vo, Model m) {
		m.addAttribute("admin_Product", productService.adminGetProduct(vo));
		System.out.println("여기 들어왔음~`" + productService.adminGetProduct(vo));
	}

	// 관리자 상품 수정

	@RequestMapping("/adminProductUpdate.do")
	public String updateProduct(@ModelAttribute AdminProductVO vo, Model model, String product_Seq) {
		// 비밀번호 체크
		boolean result = productService.checkProduct(vo.getProduct_Seq(), vo.getProduct_Password());
		if (result) { // 비밀번호가 일치하면 수정 처리후, 게시판 목록으로 리다이렉트
			productService.adminUpdateProduct(vo);
			return "redirect:adminProductList.do";
		} else { // 비밀번호가 일치하지 않는다면, div에 불일치 문구 출력, viwe.jsp로 포워드
			return "redirect:adminProductChange.do?product_Seq=" + product_Seq + "&password=false";
		}
	}

	@RequestMapping("/adminProductDelete.do")
	public String deleteBoard(@ModelAttribute AdminProductVO vo, Model model, String product_Seq) {
		// 비밀번호 체크
		boolean result = productService.checkProduct(vo.getProduct_Seq(), vo.getProduct_Password());
		if (result) { // 비밀번호가 맞다면 삭제 처리후, 게시판 목록으로 리다이렉트
			productService.adminDeleteProduct(vo);
			return "redirect:adminProductList.do";
		} else { // 비밀번호가 일치하지 않는다면
			return "redirect:adminProductChange.do?product_Seq=" + product_Seq + "&password=false";
		}
	}

}
