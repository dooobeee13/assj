package com.hy.assj.cmMember.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CmMemberDAOMabatis extends SqlSessionDaoSupport
	implements CmMemberDAO{

	private String namespace="config.mybatis.mapper.oracle.cmMember";
			
	@Override
	public int insertCmMemMember(CmMemberVO vo) {
		return getSqlSession().insert(namespace+".insertCmMemMember",vo);
	}
	
	

}
