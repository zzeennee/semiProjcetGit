package com.javaclass.controller;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaclass.domain.AccountVO;
import com.javaclass.service.AccountService;

@Controller
@RequestMapping("/myPage")
public class AccountController {

	
	
	@Autowired
	private AccountService accountServiceImpl;
	
		
	
	 //회원가입페이지
	 @RequestMapping("/signup.do") 
	 public void signup(AccountVO vo) {
		 
	 }
	 
	 @RequestMapping("/login.do")
	 public void login(AccountVO vo) {
		 
	 }
	
	//회원가입 
	@RequestMapping("/insertAccount.do")
	public void insertAccount(AccountVO vo) {
		accountServiceImpl.insertAccount(vo);
	}
	
	//로그인
	@RequestMapping("/loginCheck.do")
	public String login(AccountVO vo, HttpSession session, Model model) {
		AccountVO result = accountServiceImpl.loginCheck(vo);
		if(result==null) {
			return "/myPage/login";
		} else {
			session.setAttribute("logname", result.getAccount_Id());
			//model.addAttribute("account_list", accountServiceImpl.accountList(vo));
			return "/myPage/login_ok";
		}
	}
	
	//로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/myPage/login"; 
	}
	
	//회원정보 수정
	@RequestMapping("/updateAccount.do")
	public String updateAccount(AccountVO vo) {
		accountServiceImpl.updateAccount(vo);
		return "myPageHome";
	}
	
	// 마이페이지 불러오기
	//@RequestMapping(value="/myPage/myPageHome.do", method=RequestMethod.GET)
	@RequestMapping("/myPageHome.do")
	public void myHomePageView(AccountVO vo, Model m) {
	m.addAttribute("account", accountServiceImpl.myHomePageView(vo));
	}
	
	//마이페이지- 회원정보수정페이지
	@RequestMapping("/myPageUpdate.do")
	public void myHomeUpdatePage(AccountVO vo, Model m){
	m.addAttribute("account", accountServiceImpl.myHomePageView(vo));
	}
	
	
}
