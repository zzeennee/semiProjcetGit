package com.javaclass.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javaclass.domain.AccountVO;
import com.javaclass.domain.MyPageOrderModifyVO;
import com.javaclass.service.AccountService;
import com.javaclass.service.AccountServiceImpl;

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
	// 3.회원탈퇴
	@RequestMapping("myPage/myPageLeave.do")
	public void myPageLeave() {
	}

	
	//아이디 찾기
	@RequestMapping("/myPage/idFindForm.do")
	public void idFind(AccountVO vo) {
	}
	
	//비밀번호 찾기
	@RequestMapping("/myPage/pwFindForm.do")
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
	public void myHomePageView(String account_Id, Model m, MyPageOrderModifyVO mvo ) {
		m.addAttribute("account", accountServiceImpl.myHomePageView(account_Id));
		System.out.println("1번리스트");
		m.addAttribute("account_orderList", accountServiceImpl.adminOrderList(mvo));
		System.out.println("2번리스트");
	}
	
	//	
//	@RequestMapping("/myPage/myPageHome.do")
//	public void getList(MyPageOrderModifyVO vo,Model m) {
//		List<MyPageOrderModifyVO> list= accountServiceImpl.getList(vo);
//		m.addAttribute("List",list);
//		
//	}

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
	@RequestMapping("/myPage/idConfirm.do")
		public String idConfirm(HttpServletRequest request, HttpServletResponse response) {
			String account_Name = request.getParameter("account_Name");
			String account_Email = request.getParameter("account_Email");

			AccountServiceImpl member = accountServiceImpl.ge();

			// 해당 이름과 이메일주소를 가진 회원이 존재하는지 확인
			if (member == null) {
				request.setAttribute("alertMsg", "일치하는 회원이 존재하지 않습니다.");
				request.setAttribute("historyBack", true); // historyBack: 뒤로 돌아가기
				return "common/redirect";
			}

			// 로그인아이디 알림창 보여주고 로그인화면으로 이동
			request.setAttribute("alertMsg", name + "회원님의 아이디는 \"" + member.getaccount_Id() + "\"입니다.");
			request.setAttribute("replaceUrl", "../member/doLoginForm");
			return "common/redirect";
		}
	
	//비밀번호 찾기
	/*
	 * @RequestMapping("myPage/userFindPw.do") public ModelAndView
	 * userFindPw(@ModelAttribute AccountVO vo) throws Exception { ModelAndView mav
	 * = new ModelAndView(); String pw = accountServiceImpl.userFindPw(vo);
	 * mav.setViewName("/myPage/pwFindForm"); mav.addObject("userFindPw", pw);
	 * return mav; }
	 */


		
}
