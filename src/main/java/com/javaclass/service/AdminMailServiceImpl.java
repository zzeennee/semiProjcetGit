package com.javaclass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.AdminMailDAO;
import com.javaclass.domain.AdminMailVO;



@Service("adminMailService")
public class AdminMailServiceImpl implements AdminMailService {
	
	@Autowired
	AdminMailDAO adminMailDAO; 
	
	public void adminMailInsert(AdminMailVO vo) {
		adminMailDAO.adminMailInsert(vo);
	};
}


//@Autowired
//private MailSender mailSender;
//
//public void sendEmail(String toAddress, String fromAddress,
//		String subject, String msgBody) {
//		
//		SimpleMailMessage smm = new SimpleMailMessage();
//		smm.setFrom(fromAddress);
//		smm.setTo(toAddress);
//		smm.setSubject(subject);
//		smm.setText(msgBody);
//	
//		mailSender.send(smm);
//};
