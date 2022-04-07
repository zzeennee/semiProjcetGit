package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.QnaBoardVO;
import com.javaclass.domain.SearchCriteria;

@Repository("QnaBoardDAO")
public class QnaBoardDAOImpl implements QnaBoardDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	/* 등록 */
	public void QnaInsertBoard(QnaBoardVO bao) {
		System.out.println("===> Mybatis QnaInsertBoard() 호출");
		mybatis.insert("QnaBoardDAO.QnaInsertBoard", bao);

	}

	/* 수정 */
	public void QnaUpdateBoard(QnaBoardVO bao) {
		System.out.println("===> Mybatis QnaUpdateBoard() 호출");
		mybatis.update("QnaBoardDAO.QnaUpdateBoard", bao);

	}

	/* 삭제 */
	@Override
	public void QnaDeleteBoard(QnaBoardVO bao) {
		System.out.println("===> Mybatis QnaDeleteBoard() 호출");
		mybatis.delete("QnaBoardDAO.QnaDeleteBoard", bao);
	}

	/* 상세보기 */
	public QnaBoardVO QnaGetBoard(QnaBoardVO bao) {
		System.out.println("===> Mybatis QnaGetBoard() 호출");
		return (QnaBoardVO) mybatis.selectOne("QnaBoardDAO.QnaGetBoard", bao);
	}

	/* 게시물 목록조회 */
	public List<QnaBoardVO> QnaGetBoardList(SearchCriteria scri) throws Exception {
		return mybatis.selectList("QnaBoardDAO.listPage", scri);
	}

	/* 게시물 총 갯수 */
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return mybatis.selectOne("QnaBoardDAO.listCount");
	}

}
