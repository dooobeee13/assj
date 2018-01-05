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

	@Override
	public List<Map<String, Object>> selectByHireNotice(int cmNo) {
		return getSqlSession().selectList(namespace+".selectByHireNotice",cmNo);
	}

	@Override
	public List<Map<String, Object>> selectEmpSupbyHN(int hnNo) {
		return getSqlSession().selectList(namespace+".selectEmpSupbyHN",hnNo);
	}

	@Override
	public int insertInterview(Map<String, Object> list) {
		return getSqlSession().insert(namespace+".insertInterview",list);
	}

	@Override
	public int updateInterviewerStatus(Map<String, Object> list) {
		return getSqlSession().update(namespace+".updateInterviewerStatus",list);
	}

	@Override
	public List<Map<String, Object>> selectCalendar(int hnNo) {
		return getSqlSession().selectList(namespace+".selectCalendar",hnNo);
	}

	@Override
	public int interviewCount() {
		return getSqlSession().selectOne(namespace+".interviewCount");
	}
	
}
