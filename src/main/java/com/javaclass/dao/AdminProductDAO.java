package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.AdminProductVO;


public interface AdminProductDAO {

	//----------------------------------------------------
	
	public List<AdminProductVO> adminGetProductList(AdminProductVO vo);
	
	public void adminInsertProduct(AdminProductVO vo);
	
	public void adminUpdateProduct(AdminProductVO vo);

	public void adminDeleteProduct(AdminProductVO vo);

	public AdminProductVO adminGetProduct(AdminProductVO vo);
	
	public boolean checkProduct(String product_Seq, String product_Password);
}	

