package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.AccountDAO;
import com.javaclass.domain.AccountVO;

@Service("accoutServiceImpl")
public class AccoutServiceImpl implements AccountService{

	@Autowired
	private AccountDAO accountDAOImpl;
	
	
	public void insertAccount(AccountVO vo) {
		accountDAOImpl.insertAccount(vo);
	}
	
	public AccountVO loginCheck(AccountVO vo) {
		return accountDAOImpl.loginCheck(vo);
	}
	
	public void updateAccount(AccountVO vo) {
		accountDAOImpl.updateAccount(vo);
	}
	
	public AccountVO myHomePageView(AccountVO vo) {
		return accountDAOImpl.myHomePageView(vo);
	}
	
	public List<AccountVO> accountList(AccountVO vo){
		return accountDAOImpl.accountList(vo);
	};
}
