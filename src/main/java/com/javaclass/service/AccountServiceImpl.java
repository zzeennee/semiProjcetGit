package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.AccountDAO;
import com.javaclass.domain.AccountVO;

@Service("accountServiceImpl")
public class AccountServiceImpl implements AccountService{

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
	
	public AccountVO myHomePageView(String account_Id) {
		return accountDAOImpl.myHomePageView(account_Id);
	}
	
	public AccountVO myHomePageUpdate(String account_Id) {
		return accountDAOImpl.myHomePageUpdate(account_Id);
	}
	
	public List<AccountVO> accountList(AccountVO vo){
		return accountDAOImpl.accountList(vo);
	};
	
	public AccountVO idCheck(AccountVO vo) {
		return accountDAOImpl.idCheck(vo);
	}
}
