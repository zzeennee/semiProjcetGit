package com.javaclass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.AdminMailVO;

@Repository("adminMailDAO")
public class AdminMailDAOImpl implements AdminMailDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void adminMailInsert(AdminMailVO vo) {
		System.out.println("===> Mybatis adminMailInsert() 호출");
		mybatis.insert("MailDAO.adminInsertMail", vo);
	};
}
