package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class MyPageOrderModifyVO {
	
	private int orderdata_seq; // 주문번호
	private String order_date; // 주문시간
	private String pay_select; //결제유형
	private String user_require; //배송요구사항
	private String state; //주문상태

	private String account_Id; //계정
	private String account_Addr1; //우편번호
	private String account_Addr2; //주소
	private String account_Addr3; //상세주소
	private String  account_Tel ; //연락처
	private String  account_Name ; //배송자이름
	
	private int buylist_number;// 상품리스트고유번호
	
	private int  pay_price ; //결제금액
	private String  pay_date ; //결제시간
	private String  pay_name  ; //결제자 이름 
	
	private int product_Seq; //상품번호
	private String product_Name; //상품명
	private String  product_realMainImg  ; //상품이미지 
	private int  product_amount ; //수량
	
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getProduct_Seq() {
		return product_Seq;
	}
	public void setProduct_Seq(int product_Seq) {
		this.product_Seq = product_Seq;
	}
	public String getProduct_Name() {
		return product_Name;
	}
	public void setProduct_Name(String product_Name) {
		this.product_Name = product_Name;
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
	public String getAccount_Tel() {
		return account_Tel;
	}
	public void setAccount_Tel(String account_Tel) {
		this.account_Tel = account_Tel;
	}
	public String getAccount_Name() {
		return account_Name;
	}
	public void setAccount_Name(String account_Name) {
		this.account_Name = account_Name;
	}
	public int getProduct_amount() {
		return product_amount;
	}
	public void setProduct_amount(int product_amount) {
		this.product_amount = product_amount;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getPay_name() {
		return pay_name;
	}
	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}
	public String getProduct_realMainImg() {
		return product_realMainImg;
	}
	public void setProduct_realMainImg(String product_realMainImg) {
		this.product_realMainImg = product_realMainImg;
	}
	public int getBuylist_number() {
		return buylist_number;
	}
	public void setBuylist_number(int buylist_number) {
		this.buylist_number = buylist_number;
	}
	
	
	
	
	
	
	
	
}	
	
	
	
