package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class MyPageOrderModifyVO {
	
	private int orderdata_seq;
	private String order_date;
	private String pay_select;
	private String user_require;
	private String account_Id;
	private String state;
	private int product_Seq;
	
	public int getOrderdata_seq() {
		return orderdata_seq;
	}
	public void setOrderdata_seq(int orderdata_seq) {
		this.orderdata_seq = orderdata_seq;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getPay_select() {
		return pay_select;
	}
	public void setPay_select(String pay_select) {
		this.pay_select = pay_select;
	}
	public String getUser_require() {
		return user_require;
	}
	public void setUser_require(String user_require) {
		this.user_require = user_require;
	}
	public String getAccount_Id() {
		return account_Id;
	}
	public void setAccount_Id(String account_Id) {
		this.account_Id = account_Id;
	}
	public int getProduct_Seq() {
		return product_Seq;
	}
	public void setProduct_Seq(int product_Seq) {
		this.product_Seq = product_Seq;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}	
	
	
	
}	
	
	
	
