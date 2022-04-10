package com.javaclass.domain;

public class AdminMailVO {
	
	//메일 보내기 위한 작성자 아이디, 이름, 이메일
	String account_Id;
	String account_Name;
	String account_Email;
	
	//메일 보낸 것을 저장하기 위한 VO
	int mail_Seq;
	String mail_Title;
	String mail_ReceiveMail;
	String mail_Category;
	String mail_Content;
	String mail_Date;
	
	public String getAccount_Id() {
		return account_Id;
	}
	public void setAccount_Id(String account_Id) {
		this.account_Id = account_Id;
	}
	public String getAccount_Name() {
		return account_Name;
	}
	public void setAccount_Name(String account_Name) {
		this.account_Name = account_Name;
	}
	public String getAccount_Email() {
		return account_Email;
	}
	public void setAccount_Email(String account_Email) {
		this.account_Email = account_Email;
	}
	public int getMail_Seq() {
		return mail_Seq;
	}
	public void setMail_Seq(int mail_Seq) {
		this.mail_Seq = mail_Seq;
	}
	public String getMail_Title() {
		return mail_Title;
	}
	public void setMail_Title(String mail_Title) {
		this.mail_Title = mail_Title;
	}
	public String getMail_ReceiveMail() {
		return mail_ReceiveMail;
	}
	public void setMail_ReceiveMail(String mail_ReceiveMail) {
		this.mail_ReceiveMail = mail_ReceiveMail;
	}
	public String getMail_Category() {
		return mail_Category;
	}
	public void setMail_Category(String mail_Category) {
		this.mail_Category = mail_Category;
	}
	public String getMail_Content() {
		return mail_Content;
	}
	public void setMail_Content(String mail_Content) {
		this.mail_Content = mail_Content;
	}
	public String getMail_Date() {
		return mail_Date;
	}
	public void setMail_Date(String mail_Date) {
		this.mail_Date = mail_Date;
	}
	
	
			
}
