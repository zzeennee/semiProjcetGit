package com.javaclass.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.AccountVO;
import com.javaclass.service.AccountService;
import com.javaclass.service.AccountServiceImpl;

@Controller
//@RequestMapping("/myPage")
public class AccountController {

	
	
	@Autowired
	private AccountService accountServiceImpl;
	
		
	
	 //회원가입페이지
	 @RequestMapping("/myPage/signup.do") 
	 public void signup(AccountVO vo) {
		 
	 }
	 
	 @RequestMapping("/myPage/login.do")
	 public void login(AccountVO vo) {

	 }
	
	//회원가입 
	@RequestMapping("/myPage/insertAccount.do")
	public void insertAccount(AccountVO vo) {
		accountServiceImpl.insertAccount(vo);
	}
	@RequestMapping(value="/myPage/idCheck.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public String idCheck(AccountVO vo) {
		AccountVO account = accountServiceImpl.idCheck(vo);
		String message = "";
		if(account==null) {
			message = "yes";
		} else {
			message = "no";
		}
		return message;
	}
	
	//로그인
	
	  @RequestMapping("/myPage/loginCheck.do") 
	  public String login(AccountVO vo,HttpSession session, Model model) { 
		  AccountVO result = accountServiceImpl.loginCheck(vo); 
		  if(result==null) { 
			  System.out.println("로그인실패"+ session.getAttribute("logname"));
			  return "/myPage/login";
		  	} else { 
			  session.setAttribute("logname", result.getAccount_Id());
			  System.out.println("로그인성공"+ session.getAttribute("logname"));
			  model.addAttribute("account_list", accountServiceImpl.accountList(vo));
			  return "/myPage/login_ok"; 
			  } 
		  }
	 
	
	/*
	 * private void login(HttpServletRequest request, HttpServletResponse response)
	 * throws ServletException, IOException { String account_Id =
	 * request.getParameter("account_Id"); String account_Password =
	 * request.getParameter("account_Password"); System.out.println(account_Id + " "
	 * + account_Password); AccountVO vo =
	 * AccountServiceImpl.getAccountServiceImpl().login(account_Id,
	 * account_Password); if(vo!=null) { //세션저장 HttpSession session =
	 * request.getSession(); session.setAttribute("userinfo", vo);
	 * 
	 * //아이디저장 확인 String idsave = request.getParameter("idsave");
	 * System.out.println("idsave" + idsave); if("saveok".equals(idsave)) { Cookie
	 * cookie = new Cookie("saveid", vo.getAccount_Id()); cookie.setPath("/");
	 * cookie.setMaxAge(60*60); response.addCookie(cookie); } else { Cookie[]
	 * cookies = request.getCookies(); for(int i=0; i<cookies.length; i++) {
	 * if(cookies[i].getName().equals("saveid")) { cookies[i].setMaxAge(0);
	 * response.addCookie(cookies[i]); break; } } }
	 * request.getRequestDispatcher("/webapp/home.jsp").forward(request, response);
	 * return; //화면이동 } else { //에러메시지 출력 } }
	 */
	//로그아웃
	@RequestMapping("/myPage/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";//로그아웃 했을 때 메인페이지로 이동함
	}
	
	//회원정보 수정
	@RequestMapping("/myPage/updateAccount.do")
	public String updateAccount(AccountVO vo) {
		accountServiceImpl.updateAccount(vo);
		return "myPageHome";
	}
	
	// 마이페이지 불러오기
	//@RequestMapping(value="/myPage/myPageHome.do", method=RequestMethod.GET)
	@RequestMapping("/myPage/myPageHome.do")
	public void myHomePageView(String account_Id, Model m) {
	m.addAttribute("account", accountServiceImpl.myHomePageView(account_Id));
	}
	
	//마이페이지- 회원정보수정페이지
	@RequestMapping("/myPage/myPageUpdate.do")
	public void myHomeUpdatePage(String account_Id, Model m){
	m.addAttribute("account", accountServiceImpl.myHomePageUpdate(account_Id));
	System.out.println("??");
	
	}
	
	
}
