package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.QnaBoardVO;

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
	
	/* 글 리스트 */
	public List<QnaBoardVO> QnaGetBoardList(HashMap map);

	
	
}
