package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.AccountVO;

public interface AccountDAO {
	
	
	//회원가입 기능 구현
	public void insertAccount(AccountVO vo);
	
	public AccountVO loginCheck(AccountVO vo);
	
	public void updateAccount(AccountVO vo);
	
	public AccountVO myHomePageView(AccountVO vo);
	
	public List<AccountVO> accountList(AccountVO vo);
	
	
}
