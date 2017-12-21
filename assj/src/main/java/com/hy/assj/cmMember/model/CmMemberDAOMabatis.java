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

	@Override
	public String selectPwd(String cmId) {
		return getSqlSession().selectOne(namespace+".selectPwdByUserid",cmId);
	}

	@Override
	public CmMemberVO selectMember(String cmId) {
		return getSqlSession().selectOne(namespace+".selectMember",cmId);
	}

	@Override
	public int cmMemberOut(String cmId) {
		return getSqlSession().delete(namespace+".cmMemberOut",cmId);
	}
	
	

}
