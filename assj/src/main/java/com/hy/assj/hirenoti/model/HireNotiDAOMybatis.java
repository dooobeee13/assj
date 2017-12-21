package com.hy.assj.hirenoti.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class HireNotiDAOMybatis extends SqlSessionDaoSupport implements HireNotiDAO{

	private String namespace="config.mybatis.mapper.oracle.hireNoti";
	
	@Override
	public int insertHireNoti(HireNotiVO vo) {
		
		return 0;
	}
	
}
