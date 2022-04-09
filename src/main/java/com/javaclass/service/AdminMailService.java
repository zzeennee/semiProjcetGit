package com.javaclass.service;

public interface AdminMailService {
	
	public void sendEmail(String toAddress, String fromAddress,
			String subject, String msgBody);
}
