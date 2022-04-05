package com.javaclass.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminChartVO {

	int cnt;
	String product_Category;
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getProduct_Category() {
		return product_Category;
	}
	public void setProduct_Category(String product_Category) {
		this.product_Category = product_Category;
	}
	
	
}
