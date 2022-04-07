package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class AccountVO {
	private int account_Seq;
	private String account_Id;
	private String account_Password;
	private String account_Name;
	private String account_Email;
	private String account_Tel;
	private String account_Addr1;
	private String account_Addr2;
	private String account_Addr3;
	private String account_Status;
	private String account_Leave;
	private String account_Date;
	private String account_Reason;
	//파일저장 
	private String account_ProfileImg;
	private String account_realProfileImg;
	MultipartFile account_File;
	
	public String getAccount_ProfileImg() {
		return account_ProfileImg;
	}
	public void setAccount_ProfileImg(String account_ProfileImg) {
		this.account_ProfileImg = account_ProfileImg;
	}
	
	public String getAccount_realProfileImg() {
		return account_realProfileImg;
	}
	public void setAccount_realProfileImg(String account_realProfileImg) {
		this.account_realProfileImg = account_realProfileImg;
	}
	
	public MultipartFile getAccount_File() {
		return account_File;
	}
	public void setAccount_File(MultipartFile account_File) {
		this.account_File = account_File;
		// 업로드 파일 접근
				if (!account_File.isEmpty()) { // 파일이 비어있는게 아니라면
					this.account_ProfileImg = account_File.getOriginalFilename(); // 파일명
					// 실제 저장된 파일명 만들기
					// 사람들이 중복되는 이름을 많이 사용하니까 같은 파일명 저장을 눌러도
					// 시스템 적으로 다른 이름으로 저장함
					UUID uuid = UUID.randomUUID();
					account_realProfileImg = uuid.toString() + "_" + account_ProfileImg;

					// ***********************************************
					// 해당 경로로 변경
					// 저장 : File - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
					File f = new File("C:\\springEC\\webwork\\05_semiProject\\src\\main\\webapp\\resources\\upload\\"
							+ account_realProfileImg);
//					File f = new File("../../semiProjectGit/src/main/webapp/resources/upload/"
//							+ board_RealMainImg);

					try {
						account_File.transferTo(f);

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {

						e.printStackTrace();
					}
				}
	}
	//////////////////////////////////////////////////////////////////////////////////////
	public int getAccount_Seq() {
		return account_Seq;
	}
	public void setAccount_Seq(int account_Seq) {
		this.account_Seq = account_Seq;
	}
	public String getAccount_Id() {
		return account_Id;
	}
	public void setAccount_Id(String account_Id) {
		this.account_Id = account_Id;
	}
	public String getAccount_Password() {
		return account_Password;
	}
	public void setAccount_Password(String account_Password) {
		this.account_Password = account_Password;
	}
	public String getAccount_Name() {
		return account_Name;
	}
	public void setAccount_Name(String account_Name) {
		this.account_Name = account_Name;
	}
	public String getAccount_Email() {
		return account_Email;
	}
	public void setAccount_Email(String account_Email) {
		this.account_Email = account_Email;
	}
	public String getAccount_Tel() {
		return account_Tel;
	}
	public void setAccount_Tel(String account_Tel) {
		this.account_Tel = account_Tel;
	}
	public String getAccount_Addr1() {
		return account_Addr1;
	}
	public void setAccount_Addr1(String account_Addr1) {
		this.account_Addr1 = account_Addr1;
	}
	public String getAccount_Addr2() {
		return account_Addr2;
	}
	public void setAccount_Addr2(String account_Addr2) {
		this.account_Addr2 = account_Addr2;
	}
	public String getAccount_Addr3() {
		return account_Addr3;
	}
	public void setAccount_Addr3(String account_Addr3) {
		this.account_Addr3 = account_Addr3;
	}
	public String getAccount_Status() {
		return account_Status;
	}
	public void setAccount_Status(String account_Status) {
		this.account_Status = account_Status;
	}
	public String getAccount_Leave() {
		return account_Leave;
	}
	public void setAccount_Leave(String account_Leave) {
		this.account_Leave = account_Leave;
	}
	public String getAccount_Date() {
		return account_Date;
	}
	public void setAccount_Date(String account_Date) {
		this.account_Date = account_Date;
	}
	public String getAccount_Reason() {
		return account_Reason;
	}
	public void setAccount_Reason(String account_Reason) {
		this.account_Reason = account_Reason;
	}
	
}
