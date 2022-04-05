package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.AccountVO;

public interface AccountService {

	public void insertAccount(AccountVO vo);
	
	public AccountVO loginCheck(AccountVO vo);
	
	public void updateAccount(AccountVO vo);
	
	public AccountVO myHomePageView(AccountVO vo);
	
	public List<AccountVO> accountList(AccountVO vo);
}
