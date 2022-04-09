package com.javaclass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminMailDAO")
public class AdminMailDAOImpl implements AdminMailDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
}
