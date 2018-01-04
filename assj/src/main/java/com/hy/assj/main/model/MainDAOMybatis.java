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

}
