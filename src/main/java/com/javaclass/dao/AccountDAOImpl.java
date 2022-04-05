package com.javaclass.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.AccountVO;

@Repository("accountDAOImpl")
public class AccountDAOImpl implements AccountDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertAccount(AccountVO vo) {
		sqlSession.insert("accountMapper.insertAccount", vo);
		//"": mapper의 별칭
	}
	
	public AccountVO loginCheck(AccountVO vo) {
		return sqlSession.selectOne("accountMapper.loginCheck", vo);
	}
	
	public void updateAccount(AccountVO vo) {
		sqlSession.update("accountMapper.updateAccount", vo);
	}
	
	public AccountVO myHomePageView(AccountVO vo) {
		return sqlSession.selectOne("accountMapper.myHomePageView", vo);
	}
	
	public List<AccountVO> accountList(AccountVO vo){
		return sqlSession.selectList("accountMapper.accountList", vo);
	};
	
	
}
