package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.QnaBoardVO;
import com.javaclass.domain.SearchCriteria;

//@Repository
public interface QnaBoardDAO {
	
	/* 글 등록 */
	public void QnaInsertBoard(QnaBoardVO bao);
	
	/* 글 수정 */
	public void QnaUpdateBoard(QnaBoardVO bao);
	
	/* 글 삭제 */
	public void QnaDeleteBoard(QnaBoardVO bao);
	
	/* 글 상세보기 */
	public QnaBoardVO QnaGetBoard(QnaBoardVO bao);
	
	/* 게시물 목록 조회 */
	public List<QnaBoardVO> QnaGetBoardList(SearchCriteria scri) throws Exception;
	
	/* 게시물 총 갯수 */
	public int listCount(SearchCriteria scri) throws Exception;
	
	
}
