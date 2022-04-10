package com.javaclass.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaclass.domain.MyPageOrderModifyVO;
import com.javaclass.service.MyPageOrderModifyService;

//###(1) 해당 어노테이션 지정
@Controller
public class MyPageOrderModifyController {
	
	@Autowired
	private MyPageOrderModifyService ordermodifyServiceImpl;

    //주문수정 페이지 form action 값 지정 *********************************************************
	
	  @RequestMapping("/myPage/modi.do") 
	  public String modi(MyPageOrderModifyVO vo, String account_Id) {
	  ordermodifyServiceImpl.updateMember(vo); 
	  return "redirect:orderload.do?account_Id=" + account_Id;
	  }
	  
	//db값 주문내역페이지에 가져오기 ***************************************************************
	
	  @RequestMapping("/myPage/orderpage.do")
	public void getOrderList(MyPageOrderModifyVO vo,Model m) {
		List<MyPageOrderModifyVO> list= ordermodifyServiceImpl.getOrderList(vo);
		m.addAttribute("orderList",list);
		
	}
	
	
	//주문내역페이지에서 주문상세보기 페이지 db값 가지고 오는거 설정**********************************
	
	  @RequestMapping("/myPage/orderload.do")
	  public void selectLoad(MyPageOrderModifyVO vo, Model m) {
	  m.addAttribute("board",ordermodifyServiceImpl.selectLoad(vo));
			 
	 }
		
	
	
    //주문수정페이지 수정완성하기****************************************************************
	
	  @RequestMapping("updateMember.do") 
	public String updateMember(MyPageOrderModifyVO vo) {

		ordermodifyServiceImpl.updateMember(vo); //return "redirect:orderpage.do";
		return "/orderpage.do"; 
	}
	 
	  
	// 보류 *****************************************************************************
	@RequestMapping("saveMember.do")
	public void saveMember(MyPageOrderModifyVO vo) {
		ordermodifyServiceImpl.getOrderList(vo);
		
	}
	
	
	//주문 내역페이지 값들 수정페이지에 데이터 값 보여주기************************************************
	
	@RequestMapping("/myPage/ordermodify.do")
	public void selectModify(MyPageOrderModifyVO vo, Model m) {
		m.addAttribute("board",ordermodifyServiceImpl.selectModify(vo));
		 
	}
	
	
	//취소/교환/반품 페이지 ***********************************************************************
	
	@RequestMapping("/myPage/canclepage.do")
	public void selectDelete(HttpServletRequest  req, MyPageOrderModifyVO vo, Model m) {
		String account_Id = req.getParameter("account_Id");
		vo.setAccount_Id(account_Id);
		m.addAttribute("board",ordermodifyServiceImpl.selectDelete(account_Id));
		
	}
	
	
	
	//cancle 페이지에서 option 값 가져오기 ***********************************************************
	
	@RequestMapping("/myPage/canclepage2.do")
	public String trainerMyPage(MyPageOrderModifyVO vo , String account_Id) {
		 ordermodifyServiceImpl.updateCancle(vo);
        return "redirect:/myPage/cancleload.do?account_Id=" + account_Id;
	}
	

	//cancleload 페이지에 취소/교환/반품 상태 표시해주기 **************************************************
	
	@RequestMapping("/myPage/cancleload.do") 
	public void getCancleList(MyPageOrderModifyVO vo,Model m) {
		List<MyPageOrderModifyVO> list= ordermodifyServiceImpl.getCancleList(vo);
		m.addAttribute("cancleList",list);
	}
	
	
	 
	 

		
	 
}
	

