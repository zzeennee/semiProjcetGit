package com.javaclass.domain;

public class AdminListVO {
	
	//회원 목록 불러오기
	private int account_Seq;
	private String account_Id;
	private String account_Password;
	private String account_Name;
	private String account_Email;
	private String account_Tel;
	private String account_Addr1;
	private String account_Addr2;
	private String account_Addr3;
	private String account_Status;
	private String account_Leave;
	private String account_Date;
	private String account_Reason;
	
	public int getAccount_Seq() {
		return account_Seq;
	}
	public void setAccount_Seq(int account_Seq) {
		this.account_Seq = account_Seq;
	}
	public String getAccount_Id() {
		return account_Id;
	}
	public void setAccount_Id(String account_Id) {
		this.account_Id = account_Id;
	}
	public String getAccount_Password() {
		return account_Password;
	}
	public void setAccount_Password(String account_Password) {
		this.account_Password = account_Password;
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
	public String getAccount_Tel() {
		return account_Tel;
	}
	public void setAccount_Tel(String account_Tel) {
		this.account_Tel = account_Tel;
	}
	public String getAccount_Addr1() {
		return account_Addr1;
	}
	public void setAccount_Addr1(String account_Addr1) {
		this.account_Addr1 = account_Addr1;
	}
	public String getAccount_Addr2() {
		return account_Addr2;
	}
	public void setAccount_Addr2(String account_Addr2) {
		this.account_Addr2 = account_Addr2;
	}
	public String getAccount_Addr3() {
		return account_Addr3;
	}
	public void setAccount_Addr3(String account_Addr3) {
		this.account_Addr3 = account_Addr3;
	}
	public String getAccount_Status() {
		return account_Status;
	}
	public void setAccount_Status(String account_Status) {
		this.account_Status = account_Status;
	}
	public String getAccount_Leave() {
		return account_Leave;
	}
	public void setAccount_Leave(String account_Leave) {
		this.account_Leave = account_Leave;
	}
	public String getAccount_Date() {
		return account_Date;
	}
	public void setAccount_Date(String account_Date) {
		this.account_Date = account_Date;
	}
	public String getAccount_Reason() {
		return account_Reason;
	}
	public void setAccount_Reason(String account_Reason) {
		this.account_Reason = account_Reason;
	}
	
	//주문 목록 리스트
	String orderdata_seq;
	String pay_number;
	String sender_name;
	String sender_email;
	String sender_tel;
	String receiver_name;
	String receiver_email;
	String receiver_tel;
	String user_require;
	String price;
	String order_date;
	String state;

	public String getOrderdata_seq() {
		return orderdata_seq;
	}
	public void setOrderdata_seq(String orderdata_seq) {
		this.orderdata_seq = orderdata_seq;
	}
	public String getPay_number() {
		return pay_number;
	}
	public void setPay_number(String pay_number) {
		this.pay_number = pay_number;
	}
	public String getSender_name() {
		return sender_name;
	}
	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}
	public String getSender_email() {
		return sender_email;
	}
	public void setSender_email(String sender_email) {
		this.sender_email = sender_email;
	}
	public String getSender_tel() {
		return sender_tel;
	}
	public void setSender_tel(String sender_tel) {
		this.sender_tel = sender_tel;
	}
	public String getReceiver_name() {
		return receiver_name;
	}
	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}
	public String getReceiver_email() {
		return receiver_email;
	}
	public void setReceiver_email(String receiver_email) {
		this.receiver_email = receiver_email;
	}
	public String getReceiver_tel() {
		return receiver_tel;
	}
	public void setReceiver_tel(String receiver_tel) {
		this.receiver_tel = receiver_tel;
	}
	public String getUser_require() {
		return user_require;
	}
	public void setUser_require(String user_require) {
		this.user_require = user_require;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	//결제 목록 리스트
	String pay_name;
	String pay_select;
	String pay_email;
	String pay_price;
	String pay_date;

	public String getPay_name() {
		return pay_name;
	}
	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}
	public String getPay_select() {
		return pay_select;
	}
	public void setPay_select(String pay_select) {
		this.pay_select = pay_select;
	}
	public String getPay_email() {
		return pay_email;
	}
	public void setPay_email(String pay_email) {
		this.pay_email = pay_email;
	}
	public String getPay_price() {
		return pay_price;
	}
	public void setPay_price(String pay_price) {
		this.pay_price = pay_price;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}

}
