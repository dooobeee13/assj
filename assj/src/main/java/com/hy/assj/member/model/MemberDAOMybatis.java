package com.hy.assj.member.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOMybatis extends SqlSessionDaoSupport
 	implements MemberDAO{

	private String namespace="config.mybatis.mapper.oracle.member";
	
	@Override
	public int insertMemMember(MemberVO vo) {
		return getSqlSession().insert(namespace+".insertMemMember",vo);
	}

	@Override
	public int duplicationId(String memId) {
		return getSqlSession().selectOne(namespace+".duplicationId",memId);
	}

}
