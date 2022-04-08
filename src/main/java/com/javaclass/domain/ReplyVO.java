package com.javaclass.domain;

import java.util.Date;

public class ReplyVO {

	private int qnaSeq;
	private int reply_rno;
	private String reply_content;
	private String reply_writer;
	private Date reply_regdate;
	
	
	public int getQnaSeq() {
		return qnaSeq;
	}




	public void setQnaSeq(int qnaSeq) {
		this.qnaSeq = qnaSeq;
	}




	public int getReply_rno() {
		return reply_rno;
	}




	public void setReply_rno(int reply_rno) {
		this.reply_rno = reply_rno;
	}




	public String getReply_content() {
		return reply_content;
	}




	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}




	public String getReply_writer() {
		return reply_writer;
	}




	public void setReply_writer(String reply_writer) {
		this.reply_writer = reply_writer;
	}




	public Date getReply_regdate() {
		return reply_regdate;
	}




	public void setReply_regdate(Date reply_regdate) {
		this.reply_regdate = reply_regdate;
	}




	@Override
	public String toString() {
		return "ReplyVO [qnaSeq=" + qnaSeq + ", reply_rno=" + reply_rno + ", reply_content=" + reply_content + ", reply_writer=" + reply_writer + ", reply_regdate="
				+ reply_regdate + "]";
	}
}
