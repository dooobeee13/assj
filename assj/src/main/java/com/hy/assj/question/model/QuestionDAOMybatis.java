package com.hy.assj.question.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.common.SearchVO;

@Repository
public class QuestionDAOMybatis extends SqlSessionDaoSupport
	implements QuestionDAO{
	private String namespace="config.mybatis.mapper.oracle.question";
	
	@Override
	public int insertQuestion(QuestionVO questionVo) {
		return getSqlSession().insert(namespace+".insertQuestion",questionVo);
	}

	@Override
	public List<Map<String, Object>> replyList(SearchVO searchVO) {
		return getSqlSession().selectList(namespace+".replyList",searchVO);
	}

	@Override
	public int replyListTotalCount(SearchVO searchVO) {
		return getSqlSession().selectOne(namespace+".replyListTotalCount",searchVO);
	}

	@Override
	public int replyDelete(int no) {
		return getSqlSession().delete(namespace+".replyDelete",no);
	}
	
}
