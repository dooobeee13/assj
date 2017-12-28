package com.hy.assj.reboard.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.common.SearchVO;

@Repository
public class ReboardDAOMybatis extends SqlSessionDaoSupport
	implements ReboardDAO{

	private String namespace="config.mybatis.mapper.oracle.reboard";
	
	@Override
	public int insertQnA(ReboardVO reboardVO) {
		return getSqlSession().insert(namespace+".insertQnA",reboardVO);
	}

	@Override
	public List<ReboardVO> QnaList() {
		return getSqlSession().selectList(namespace+".QnaList");
	}
	
	@Override
	public int updateReadCount(int no) {
		return getSqlSession().update(namespace+".updateReadCount",no);
	}
	
	@Override
	public ReboardVO selectByNo(int no) {
		return getSqlSession().selectOne(namespace+".selectByNo",no);
	}
	/*
	@Override
	public List<Map<String, Object>> QnaRownum() {
		return getSqlSession().selectList(namespace+".QnaRownum");
	}



	@Override
	public List<ReboardVO> selectAll(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectAll",searchVo);
	}

	@Override
	public int selectTotalRecordCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalRecordCount",searchVo);
	}

	
	*/

	@Override
	public int updateQnA(ReboardVO reboardVO) {
		return getSqlSession().update(namespace+".updateQnA",reboardVO);
	}
	
}
