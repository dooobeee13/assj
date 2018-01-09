package com.hy.assj.main.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAOMybatis extends SqlSessionDaoSupport implements MainDAO {

	private final String namespace = "config.mybatis.mapper.oracle.main";
	
	@Override
	public List<MHireNotiVO> selectHireNotiList() {
		return getSqlSession().selectList(namespace + ".selectHireNotiList");
	}

	@Override
	public List<MNoticeVO> selectRecentNotice() {
		return getSqlSession().selectList(namespace + ".selectRecentNotice");
	}

	@Override
	public List<MNewsVO> selectRecentNews() {
		return getSqlSession().selectList(namespace + ".selectRecentNews");
	}

	@Override
	public List<MOccupationVO> selectOccuByKeyword(String keyword) {
		return getSqlSession().selectList(namespace + ".selectOccuByKeyword", keyword);
	}

	@Override
	public List<MSectorsVO> selectSecByKeyword(String keyword) {
		return getSqlSession().selectList(namespace + ".selectSecByKeyword", keyword);
	}

	@Override
	public List<MNewsVO> selectNewsByKeyword(String keyword) {
		return getSqlSession().selectList(namespace + ".selectNewsByKeyword", keyword);
	}

}
