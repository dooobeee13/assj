package com.hy.assj.questionReply.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionReplyDAOMybatis extends SqlSessionDaoSupport
	implements QuestionReplyDAO{
	
	private String namespace="config.mybatis.mapper.oracle.question";
	
	@Override
	public int insertQuestionReply(QuestionReplyVO questionReplyVo) {
		return getSqlSession().insert(namespace+".insertQuestionReply",questionReplyVo);
	}
		
	
}
