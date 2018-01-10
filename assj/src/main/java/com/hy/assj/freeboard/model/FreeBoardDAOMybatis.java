package com.hy.assj.freeboard.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class FreeBoardDAOMybatis extends SqlSessionDaoSupport implements FreeBoardDAO{
	
	private String namespace="config.mybatis.mapper.oracle.freeBoard";

	@Override
	public int insertFB(FreeBoardVO fbVO) {
		return getSqlSession().insert(namespace+".insertFB", fbVO);
	}

	@Override
	public Map<String, Object> selectFB(int fbNo) {
		return getSqlSession().selectOne(namespace+".selectFB", fbNo);
	}

	@Override
	public List<Map<String, Object>> selectAllFB() {
		return getSqlSession().selectList(namespace+".selectAllFB");
	}

	@Override
	public FreeBoardVO selectFBByNo(int fbNo) {
		return getSqlSession().selectOne(namespace+".selectFBByNo", fbNo);
	}

	@Override
	public int updateFB(FreeBoardVO fbVO) {
		return getSqlSession().update(namespace+".updateFB", fbVO);
	}

	@Override
	public int deleteFB(int fbNo) {
		return getSqlSession().delete(namespace+".deleteFBByNo", fbNo);
	}

	
}
