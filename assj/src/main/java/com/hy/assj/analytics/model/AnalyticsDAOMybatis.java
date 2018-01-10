package com.hy.assj.analytics.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AnalyticsDAOMybatis extends SqlSessionDaoSupport implements AnalyticsDAO {
	private String namespace="config.mybatis.mapper.oracle.analytics";

	@Override
	public List<AnalyticsVO> selectAllAnaly() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(namespace+".selectAllAnaly");
	}

	@Override
	public Map<String, Object> selectAnalyToday() {
		return getSqlSession().selectOne(namespace+".selectAnalyToday");
	}

	@Override
	public void newAnalytics() {
		getSqlSession().insert(namespace+".newAnalytics");
	}

	@Override
	public int updateTotalCount() {
		return getSqlSession().update(namespace+".updateTotalCount");
	}

	@Override
	public int updateCountView() {
		return getSqlSession().update(namespace+".updateCountView");
	}

	@Override
	public int updatePageview() {
		return getSqlSession().update(namespace+".updatePageview");
	}

	@Override
	public int totalCountView() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".totalCountView");
	}

	@Override
	public int totalCount() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".totalCount");
	}

	@Override
	public int totalPageview() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".totalPageview");
	}

	@Override
	public int updateCountViewDown() {
		return getSqlSession().update(namespace+".updateCountViewDown");
	}

	@Override
	public int selectTotalMemCountNotToday() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectTotalMemCountNotToday");
	}

	@Override
	public int selectTotalMemCountToday() {
		return getSqlSession().selectOne(namespace+".selectTotalMemCountToday");
	}

	@Override
	public int selectTotalHireNoti() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectTotalHireNoti");
	}

	@Override
	public int selectTotalResume() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectTotalResume");
	}

	@Override
	public int selectTotalNews() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectTotalNews");
	}

	@Override
	public int selectTotalIntroduction() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectTotalIntroduction");
	}

	@Override
	public List<Map<String, Object>> selectTotalCompanyScale() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(namespace+".selectTotalCompanyScale");
	}

	@Override
	public int selectTotalMemCount() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectTotalMemCount");
	}

	@Override
	public int selectTotalReboard() {
		return getSqlSession().selectOne(namespace+".selectTotalReboard");
	}

	@Override
	public int selectTodayReboard() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectTodayReboard");
	}

	@Override
	public int selectDeadlineHN() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectDeadlineHN");
	}

	@Override
	public int selectTotalHN() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectTotalHN");
	}
}
