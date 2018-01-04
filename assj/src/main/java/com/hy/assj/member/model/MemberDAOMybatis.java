package com.hy.assj.member.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hy.assj.hirenoti.model.HireNotiSearchVO;

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

	@Override
	public MemberVO selectMemberBySns(Map<String, String> map) {
		return getSqlSession().selectOne(namespace + ".selectMemberBySns", map);
	}

	@Override
	public int countMemberBySns(Map<String, String> map) {
		return getSqlSession().selectOne(namespace + ".countMemberBySns", map);
	}

	@Override
	public int insertMemberBySns(MemberVO vo) {
		return getSqlSession().insert(namespace + ".insertMemberBySns", vo); 
	}

	@Override
	public List<Map<String, Object>> scrapList(HireNotiSearchVO hireNotiSearchVO) {
		return getSqlSession().selectList(namespace+".scrapList",hireNotiSearchVO);
	}

	@Override
	public int scrapTotalRecordCount(HireNotiSearchVO hireNotiSearchVO) {
		return getSqlSession().selectOne(namespace+".scrapTotalRecordCount",hireNotiSearchVO);
	}

	@Override
	public int deleteScrap(int hnNo) {
		return getSqlSession().delete(namespace+".deleteScrap",hnNo);
	}
	
}
