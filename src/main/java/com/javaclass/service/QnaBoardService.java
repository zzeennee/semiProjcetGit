package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.Criteria;
import com.javaclass.domain.QnaBoardVO;
import com.javaclass.domain.SearchCriteria;

public interface QnaBoardService {
	// CRUD 기능의 메소드 구현
	
		// 글 등록
		public void QnaInsertBoard(QnaBoardVO bao);

		// 글 수정
		public void QnaUpdateBoard(QnaBoardVO bao);
		
		//글 삭제2
		public void QnaDeleteBoard(QnaBoardVO bao);

		// 글 상세 조회
		public QnaBoardVO QnaGetBoard(QnaBoardVO bao);
		
		// 게시물 목록 조회
		public List<QnaBoardVO> QnaGetBoardList(SearchCriteria scri) throws Exception;
		
		// 게시물 총 갯수
		public int listCount(SearchCriteria scri) throws Exception;

		 
}
