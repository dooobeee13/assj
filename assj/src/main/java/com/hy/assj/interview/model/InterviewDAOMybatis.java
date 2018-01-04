package com.hy.assj.interview.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class InterviewDAOMybatis extends SqlSessionDaoSupport implements InterviewDAO {
	private String namespace="config.mybatis.mapper.oracle.interviews";

	@Override
	public List<Map<String, Object>> selectInview(int cmNo) {
		return getSqlSession().selectList(namespace+".selectInview",cmNo);
	}
	
}
