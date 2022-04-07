package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class MyPageOrderModifyVO {
	
	private int order_seq;
	private String order_time;
	private String order_payselect;
	private String order_uesrreq;
	private String account_id;
	private int product_seq;
	private String coupon_number;	
	
	
	//상품 이미지 파일 불려오기 
	//MultipartFile board_File;
	
	//public MultipartFile getBoard_File() {
	//	return board_File;
	//}
	
	//public void setBoard_File(MultipartFile board_file) {
	//	this.board_File = board_file;
	//	if (!board_File.isEmpty()) {
	//		this.coupon_number = board_File.getOriginalFilename();
	//		UUID uuid = UUID.randomUUID();
	//		coupon_number = uuid.toString() + "_" + order_uesrreq;
			
	//	File f = new File("C:\\spring\\webwork\\semiProjcetGit\\src\\main\\webapp\\resources\\upload\\"
	//	+ coupon_number);
		
	//	try {
	//		board_File.transferTo(f);
	//		
	//	} catch (IllegalStateException e) {
	//		e.printStackTrace();
	//		
	//	} catch (IOException e) {
	//		e.printStackTrace();
	//	}
	//	
	//	}
	//}	
		
		
	public MyPageOrderModifyVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyPageOrderModifyVO(int order_seq, String order_time, String order_payselect, String order_uesrreq,
			String account_id, int product_seq, String coupon_number) {
		super();
		this.order_seq = order_seq;
		this.order_time = order_time;
		this.order_payselect = order_payselect;
		this.order_uesrreq = order_uesrreq;
		this.account_id = account_id;
		this.product_seq = product_seq;
		this.coupon_number = coupon_number;
	}
	public int getOrder_seq() {
		return order_seq;
	}
	public void setOrder_seq(int order_seq) {
		this.order_seq = order_seq;
	}
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	public String getOrder_payselect() {
		return order_payselect;
	}
	public void setOrder_payselect(String order_payselect) {
		this.order_payselect = order_payselect;
	}
	public String getOrder_uesrreq() {
		return order_uesrreq;
	}
	public void setOrder_uesrreq(String order_uesrreq) {
		this.order_uesrreq = order_uesrreq;
	}
	public String getAccount_id() {
		return account_id;
	}
	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}
	public int getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}
	public String getCoupon_number() {
		return coupon_number;
	}
	public void setCoupon_number(String coupon_number) {
		this.coupon_number = coupon_number;
	}
	
	
	

}	
	
	
	
