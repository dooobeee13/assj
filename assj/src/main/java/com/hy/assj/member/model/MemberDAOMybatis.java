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

	@Override
	public String selectPwd(String memId) {
		return getSqlSession().selectOne(namespace+".selectPwdByUserid",memId);
	}

	@Override
	public MemberVO selectMember(String memId) {
		return getSqlSession().selectOne(namespace+".selectMember",memId);
	}

	@Override
	public int memberOut(String memId) {
		return getSqlSession().delete(namespace+".memberOut",memId);
	}

	@Override
	public int memberEdit(MemberVO vo) {
		return getSqlSession().update(namespace+".memberEdit",vo);
	}

	@Override
	public int memPwdEdit(MemberVO vo) {
		return getSqlSession().update(namespace+".memPwdEdit",vo);
	}

	
}
