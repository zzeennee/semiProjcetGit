package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class QnaBoardVO {

	int qnaSeq;
	String qnaTitle;
	String qnaPassword;
	String qnaCategory;
	String qnaContent;
	String qnaMainImg;
	String qnaRealMainImg;
	String qnaContent2;
	String qnaDate;
	String qnaName;

	MultipartFile qnaFile;
	// *************************************************

	public MultipartFile getQnaFile() {
		return qnaFile;
	}

	public void setQnaFile(MultipartFile qnaFile) {
		this.qnaFile = qnaFile;
		// 업로드 파일 접근
		if (!qnaFile.isEmpty()) { // 파일이 비어있는게 아니라면
			this.qnaMainImg = qnaFile.getOriginalFilename(); // 파일명
			// 실제 저장된 파일명 만들기
			// 사람들이 중복되는 이름을 많이 사용하니까 같은 파일명 저장을 눌러도
			// 시스템 적으로 다른 이름으로 저장함
			UUID uuid = UUID.randomUUID();
			qnaRealMainImg = uuid.toString() + "_" + qnaMainImg;

			// ***********************************************
			// 해당 경로로 변경
			// 저장 : File - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\spring\\webwork\\semiProjcetGit\\src\\main\\webapp\\resources\\upload\\"
					+ qnaRealMainImg);

			try {
				qnaFile.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}
	// *************************************************

	public int getQnaSeq() {
		return qnaSeq;
	}

	public void setQnaSeq(int qnaSeq) {
		this.qnaSeq = qnaSeq;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaPassword() {
		return qnaPassword;
	}

	public void setQnaPassword(String qnaPassword) {
		this.qnaPassword = qnaPassword;
	}

	public String getQnaCategory() {
		return qnaCategory;
	}

	public void setQnaCategory(String qnaCategory) {
		this.qnaCategory = qnaCategory;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public String getQnaMainImg() {
		return qnaMainImg;
	}

	public void setQnaMainImg(String qnaMainImg) {
		this.qnaMainImg = qnaMainImg;
	}

	public String getQnaRealMainImg() {
		return qnaRealMainImg;
	}

	public void setQnaRealMainImg(String qnaRealMainImg) {
		this.qnaRealMainImg = qnaRealMainImg;
	}

	public String getQnaContent2() {
		return qnaContent2;
	}

	public void setQnaContent2(String qnaContent2) {
		this.qnaContent2 = qnaContent2;
	}

	public String getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(String qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getQnaName() {
		return qnaName;
	}

	public void setQnaName(String qnaName) {
		this.qnaName = qnaName;
	}

	public MultipartFile getQnaFile1() {
		return qnaFile;
	}

	public void setQnaFile1(MultipartFile qnaFile) {
		this.qnaFile = qnaFile;
	}
	

	
	//**************************************************
	
	


}
