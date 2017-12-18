package com.hy.assj.TalentManagement.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class TalentManagementDAOMybatis extends SqlSessionDaoSupport implements TalentManagementDAO {
	private String namespace = "config.mybatis.mapper.oracle.TalentManagement";
	
	public List<Map<Integer, String>> selectRank(){
		return getSqlSession().selectList(namespace+".selectRank");
	}

	@Override
	public List<Map<Integer, String>> selectPosition() {
		return getSqlSession().selectList(namespace+".selectPosition");
	}

	@Override
	public List<Map<Integer, String>> selectEmpType() {
		return getSqlSession().selectList(namespace+".selectEmpType");
	}
}
