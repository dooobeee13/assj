package com.hy.assj.administrator.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.vo.NewsVO;

@Repository
public class AdminDAOMybatis extends SqlSessionDaoSupport implements AdminDAO{
	private String namespace = "config.mybatis.mapper.oracle.news";
	
	public int insertNews(NewsVO vo) {
		return getSqlSession().insert(namespace+".insertNews",vo);
	}

	@Override
	public List<Map<String, Object>> selectNews() {
		return getSqlSession().selectList(namespace+".selectNews");
	}

	@Override
	public NewsVO selectByNo(int newsNo) {
		return getSqlSession().selectOne(namespace+".selectByNo",newsNo);
	}

	@Override
	public int updateNews(NewsVO vo) {
		return getSqlSession().update(namespace+".updateNews",vo);
	}

	@Override
	public int deleteNews(int newsNo) {
		return getSqlSession().delete(namespace+".deleteNews",newsNo);
	}
}
