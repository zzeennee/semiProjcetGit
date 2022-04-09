package com.javaclass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;



@Service("adminMailService")
public class AdminMailServiceImpl implements AdminMailService {
	
	@Autowired
	private MailSender mailSender;
	
	public void sendEmail(String toAddress, String fromAddress,
			String subject, String msgBody) {
			
			SimpleMailMessage smm = new SimpleMailMessage();
			smm.setFrom(fromAddress);
			smm.setTo(toAddress);
			smm.setSubject(subject);
			smm.setText(msgBody);
		
			mailSender.send(smm);
	};
}
