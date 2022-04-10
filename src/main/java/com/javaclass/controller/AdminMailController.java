package com.javaclass.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaclass.domain.AdminMailVO;
import com.javaclass.service.AdminMailServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminMailController {
	
	@RequestMapping("/adminMail.do")
	public void mail() {
	}
	//어드민이 메일 작성을 위한 폼
	@RequestMapping("/adminMailWrite.do")
	public void adminMail() {
	}
	
	@RequestMapping("/adminMailOK.do")
	public void mailOK() {
	}
	
	@RequestMapping("/adminMailFail.do")
	public void mailfail() {
		
	}

	@Autowired
	private JavaMailSender mailSender;
    
	//mailSend 코드
	@RequestMapping(value = "/adminMailSend.do", method = RequestMethod.POST)
	public String mailSend(HttpServletRequest request, AdminMailVO vo) {
		try {
			MimeMessage mimeMessage = mailSender.createMimeMessage();
		    MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
 
		    messageHelper.setFrom("testhjh413@gmail.com"); // 보내는사람 이메일 여기선 google 메일서버 사용하는 아이디를 작성하면됨
		    messageHelper.setTo(vo.getMail_ReceiveMail()); // 받는사람 이메일
		    messageHelper.setSubject("안녕하세요. 머신킹덤 관리자 : " + vo.getAccount_Name() + "입니다."); // 메일제목
		    messageHelper.setText(vo.getMail_Content()); // 메일 내용
 
		    mailSender.send(mimeMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:adminMailOK.do";
	}
}
