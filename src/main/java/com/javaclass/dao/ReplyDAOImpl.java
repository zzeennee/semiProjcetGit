package com.javaclass.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	
	@Inject SqlSession sql;

	//댓글 조회
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList("replyMapper.readReply", bno);
	}

	//댓글 작성
	@Override
	public void writdReply(ReplyVO vo) throws Exception {
		sql.insert("replyMapper.writeReply",vo);
		
	}
	
}
