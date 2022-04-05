package com.javaclass.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminChartVO {

	int productCnt;
	String product_Category;
	
	String accountMonth;
	int accountCnt;
	
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
	
	
	
	

	
	
	
	
}
