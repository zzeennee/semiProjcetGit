package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.QnaBoardDAO;
import com.javaclass.domain.QnaBoardVO;



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
	public List<QnaBoardVO> QnaGetBoardList(HashMap map) {
		return QnaBoardDAO.QnaGetBoardList(map);
	}
	
	@Override
	public void QnaDeleteBoard(int board_Seq) {
		System.out.println();
		QnaBoardDAO.QnaDeleteBoard(board_Seq);
	}
	
	

}
