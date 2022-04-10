package com.javaclass.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminChartVO {
	
	//월별 회원가입수
	String accountMonth;
	int accountCnt;
	
	//상품별 카테고리 등록 갯수
	int productCnt;
	String product_Category;
	
	//카테고리별 판매 갯수
	int productSellCnt;
	String pay_number;
	String buylist_number;
	String product_Seq;
	String product_SellCategory;
	
	public String getAccountMonth() {
		return accountMonth;
	}
	public void setAccountMonth(String accountMonth) {
		this.accountMonth = accountMonth;
	}
	public int getAccountCnt() {
		return accountCnt;
	}
	public void setAccountCnt(int accountCnt) {
		this.accountCnt = accountCnt;
	}
	public int getProductCnt() {
		return productCnt;
	}
	public void setProductCnt(int productCnt) {
		this.productCnt = productCnt;
	}
	public String getProduct_Category() {
		return product_Category;
	}
	public void setProduct_Category(String product_Category) {
		this.product_Category = product_Category;
	}
	public int getProductSellCnt() {
		return productSellCnt;
	}
	public void setProductSellCnt(int productSellCnt) {
		this.productSellCnt = productSellCnt;
	}
	public String getPay_number() {
		return pay_number;
	}
	public void setPay_number(String pay_number) {
		this.pay_number = pay_number;
	}
	public String getBuylist_number() {
		return buylist_number;
	}
	public void setBuylist_number(String buylist_number) {
		this.buylist_number = buylist_number;
	}
	public String getProduct_Seq() {
		return product_Seq;
	}
	public void setProduct_Seq(String product_Seq) {
		this.product_Seq = product_Seq;
	}
	public String getProduct_SellCategory() {
		return product_SellCategory;
	}
	public void setProduct_SellCategory(String product_SellCategory) {
		this.product_SellCategory = product_SellCategory;
	}
	
	
	
	
	
	
	
}
