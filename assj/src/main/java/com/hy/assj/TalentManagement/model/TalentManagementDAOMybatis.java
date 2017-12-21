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

	@Override
	public List<Map<String, Object>> selectSectors() {
		return getSqlSession().selectList(namespace+".selectSectors");
	}

	@Override
	public List<Map<String, Object>> selectArea() {
		return getSqlSession().selectList(namespace+".selectArea");
	}

	@Override
	public List<Map<String, Object>> selectEducation() {
		return getSqlSession().selectList(namespace+".selectEducation");
	}

	@Override
	public List<Map<String, Object>> selectOccupation() {
		return getSqlSession().selectList(namespace+".selectOccupation");
	}

	@Override
	public List<Map<String, Object>> selectResume(TalentManagementVO vo) {
		return getSqlSession().selectList(namespace+".selectResume",vo);
	}
}
