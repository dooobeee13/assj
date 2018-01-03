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
	public List<ReboardVO> QnaList(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".QnaList",searchVo);
	}
	
	@Override
	public int updateReadCount(int no) {
		return getSqlSession().update(namespace+".updateReadCount",no);
	}
	
	@Override
	public ReboardVO selectByNo(int no) {
		return getSqlSession().selectOne(namespace+".selectByNo",no);
	}
	
	@Override
	public List<ReboardVO> selectAll(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectAll",searchVo);
	}

	@Override
	public List<Map<String, Object>> QnaRownum() {
		return getSqlSession().selectList(namespace+".QnaRownum");
	}

	@Override
	public int selectTotalRecordCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalRecordCount",searchVo);
	}

	@Override
	public int updateQnA(ReboardVO reboardVO) {
		return getSqlSession().update(namespace+".updateQnA",reboardVO);
	}

	public void deleteReBoard(Map<String, String> map){
		getSqlSession().delete(namespace+".deleteReBoard", map);
	}

	@Override
	public int updateSortNo(ReboardVO vo) {
		return getSqlSession().update(namespace+".updateSortNo", vo);
	}

	@Override
	public int replyReboard(ReboardVO vo) {
		return getSqlSession().insert(namespace+".replyReboard", vo);
	}
	
}
