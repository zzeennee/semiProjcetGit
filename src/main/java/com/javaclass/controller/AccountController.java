package com.javaclass.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.AccountVO;
import com.javaclass.service.AccountService;

@Controller
//@RequestMapping("/myPage")
public class AccountController {

	@Autowired
	private AccountService accountServiceImpl;

	// 회원가입페이지
	@RequestMapping("/myPage/signup.do")
	public void signup(AccountVO vo) {
	}

	@RequestMapping("/myPage/login.do")
	public void login(AccountVO vo) {
	}

	
	//아이디 찾기
	@RequestMapping("/myPage/idFind.do")
	public void idFind(AccountVO vo) {
	}
	
	//비밀번호 찾기
	@RequestMapping("/myPage/pwFind.do")
	public void pwFind(AccountVO vo) {
	}

	//회원탈퇴 완료 후 이동 페이지
	@RequestMapping("/myPage/accountLeave.do")
	public void accountLeave(AccountVO vo) {
	System.out.println("회원 탈퇴됨");
	}

	// 회원가입
	@RequestMapping("/myPage/insertAccount.do")
	public String insertAccount(AccountVO vo) {
		accountServiceImpl.insertAccount(vo);
		return "redirect:login.do";
	}
	@RequestMapping(value="/myPage/idCheck.do", produces="application/text;charset=utf-8")

	@ResponseBody
	public String idCheck(AccountVO vo) {
		AccountVO account = accountServiceImpl.idCheck(vo);
		String message = "";
		if (account == null) {
			message = "yes";
		} else {
			message = "no";
		}
		return message;
	}

	// 로그인

	@RequestMapping("/myPage/loginCheck.do")
	public String login(AccountVO vo, HttpSession session, Model model) {
		AccountVO result = accountServiceImpl.loginCheck(vo);
		AccountVO resultAdmin = accountServiceImpl.adminLogin(vo);
		if (result == null) {
			System.out.println("로그인 실패" + session.getAttribute("logname"));
			return "redirect:/myPage/login.do?password=false";
		} else if (result != null & resultAdmin == null) {
			session.setAttribute("logname", result.getAccount_Id());
			System.out.println("관리자 로그인 실패");
			System.out.println("일반 로그인 성공 : " + session.getAttribute("logname"));
			model.addAttribute("account_list", accountServiceImpl.accountList(vo));
			session.setAttribute("login", "loginON");
			return "redirect:/";

		} else {
			session.setAttribute("logname", result.getAccount_Id());
			System.out.println("관리자 로그인 성공");
			System.out.println("관리자 로그인 성공 : " + session.getAttribute("logname"));
			model.addAttribute("account_list", accountServiceImpl.accountList(vo));
			session.setAttribute("login", "loginON");
			session.setAttribute("admin", "ok");
			System.out.println("관리자 로그인 성공 : " + session.getAttribute("admin"));
			return "redirect:/";
		}
	}

	// 로그아웃
	@RequestMapping(value = "/myPage/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("logname") + "님 로그아웃");
		session.invalidate();
		return "redirect:/";// 로그아웃 했을 때 메인페이지로 이동함
	}

	// 마이페이지 불러오기
	// @RequestMapping(value="/myPage/myPageHome.do", method=RequestMethod.GET)
	@RequestMapping("/myPage/myPageHome.do")
	public void myHomePageView(String account_Id, Model m) {
		m.addAttribute("account", accountServiceImpl.myHomePageView(account_Id));
	}

	// 마이페이지- 회원정보수정페이지로 이동
	@RequestMapping("/myPage/myPageUpdate.do")
	public void myHomeUpdatePage(String account_Id, Model m) {
		System.out.println("<" + account_Id + ">");
		m.addAttribute("account", accountServiceImpl.myHomePageUpdate(account_Id));
		System.out.println("??");

	}

	// 마이페이지- 회원정보 수정해서 마이홈으로 이동
	@RequestMapping("/myPage/updateAccount.do")
	public String updateAccount(@ModelAttribute AccountVO vo, String account_Id) {
		System.out.println("<" + vo + ">");
		accountServiceImpl.updateAccount(vo);
		// return "redirect:myPageHome.do";
		return "redirect:myPageHome.do?account_Id=" + account_Id;
	}

	// 회원탈퇴
	@RequestMapping("/myPage/deleteAccount.do")
	public String deleteAccount(@ModelAttribute AccountVO vo, Model model, String account_Id, HttpSession session, HttpServletRequest requset) {
		boolean result = accountServiceImpl.checkPassword(vo.getAccount_Id(), vo.getAccount_Password());
		if (result) { // 비밀번호가 일치하면 탈퇴 처리 후, 메인페이지로 이동
			accountServiceImpl.deleteAccount(vo);
			session.invalidate();
			return "redirect:accountLeave.do";
		} else { // 비밀번호가 일치하지 않는다면
			return "redirect:myPageLeave.do?account_Id="+account_Id+"&password=false";
		}
	}
	
	//아이디 찾기
	@RequestMapping(value="/myPage/idFind.do", method = RequestMethod.POST)
	public String idFind(String account_Email, Model m) {
		return "공익";
	}

}
