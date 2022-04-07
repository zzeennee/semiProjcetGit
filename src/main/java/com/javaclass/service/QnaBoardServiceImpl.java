package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.QnaBoardDAO;
import com.javaclass.domain.Criteria;
import com.javaclass.domain.QnaBoardVO;
import com.javaclass.domain.SearchCriteria;



@Service("QnaBoardService")
public class QnaBoardServiceImpl implements QnaBoardService {
	
	
	@Autowired
	private QnaBoardDAO QnaBoardDAO;
	
	@Override
	public void QnaInsertBoard(QnaBoardVO bao) {
		QnaBoardDAO.QnaInsertBoard(bao);
	}
	@Override
	public void QnaUpdateBoard(QnaBoardVO bao) {
		QnaBoardDAO.QnaUpdateBoard(bao);
	}

	@Override
	public QnaBoardVO QnaGetBoard(QnaBoardVO bao) {
		return QnaBoardDAO.QnaGetBoard(bao);
	}
	
	@Override
	public void QnaDeleteBoard(QnaBoardVO bao) {
		System.out.println();
		QnaBoardDAO.QnaDeleteBoard(bao);
	}
	
	//게시물 목록 조회
	@Override
	public List<QnaBoardVO> QnaGetBoardList(SearchCriteria scri) throws Exception {
		return QnaBoardDAO.QnaGetBoardList(scri);
	}
	
	//게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return QnaBoardDAO.listCount(scri);
	}
	
	
	
	
	
	
	

}
