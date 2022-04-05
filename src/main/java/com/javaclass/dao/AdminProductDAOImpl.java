package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.AdminProductVO;

@Repository("productDAO")
public class AdminProductDAOImpl implements AdminProductDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	@Inject
	 SqlSession sqlSession;
	

	@Override
	public List<AdminProductVO> adminGetProductList(AdminProductVO vo) {
		System.out.println("===> Mybatis adminGetProductList() 호출");
		return mybatis.selectList("ProductDAO.adminGetProductList", vo);
	}
	
	@Override
	public void adminInsertProduct(AdminProductVO vo) {
		System.out.println("===> Mybatis adminInsertProduct() 호출");
		mybatis.insert("ProductDAO.adminInsertProduct", vo);

	}
	
	@Override
	public void adminUpdateProduct(AdminProductVO vo) {
		System.out.println("===> Mybatis adminUpdateProduct() 호출");
		mybatis.insert("ProductDAO.adminUpdateProduct", vo);

	}

	@Override
	public void adminDeleteProduct(AdminProductVO vo) {
		System.out.println("===> Mybatis adminDeleteProduct() 호출");
		mybatis.insert("ProductDAO.adminDeleteProduct", vo);

	}

	@Override
	public AdminProductVO adminGetProduct(AdminProductVO vo) {
		System.out.println("===> Mybatis adminGetProduct() 호출");
		return (AdminProductVO) mybatis.selectOne("ProductDAO.adminGetProduct", vo);
	}

	@Override
	public boolean checkProduct(String product_Seq, String product_Password) {
		boolean result = false;
        Map<String, String> map = new HashMap<String, String>();
        map.put("product_Seq", product_Seq);
        map.put("product_Password", product_Password);
        int count = sqlSession.selectOne("ProductDAO.checkProduct", map);
        if(count == 1) result= true;
        return result;
	}

}
