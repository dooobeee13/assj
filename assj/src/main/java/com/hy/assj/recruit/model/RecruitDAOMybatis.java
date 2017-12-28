package com.hy.assj.recruit.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class RecruitDAOMybatis extends SqlSessionDaoSupport implements RecruitDAO {

	private final String namespace = "config.mybatis.mapper.oracle.recruit";
	
	@Override
	public List<HireNotiVO> selectHireNoti(int hnNo) {
		return getSqlSession().selectList(namespace + ".selectHireNoti", hnNo);
	}

}
