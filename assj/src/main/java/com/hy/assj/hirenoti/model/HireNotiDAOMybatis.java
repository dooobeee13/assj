package com.hy.assj.hirenoti.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.common.SearchVO;

@Repository
public class HireNotiDAOMybatis extends SqlSessionDaoSupport implements HireNotiDAO{

	private String namespace="config.mybatis.mapper.oracle.hireNoti";
	
	@Override
	public int insertHireNoti(HireNotiVO vo) {
		
		return getSqlSession().insert(namespace+".insertHireNoti",vo);
	}

	@Override
	public List<HireNotiVO> selectAll(SearchVO searchVo) {
		
		return getSqlSession().selectList(namespace+".selectAll",searchVo);
	}
	
}
