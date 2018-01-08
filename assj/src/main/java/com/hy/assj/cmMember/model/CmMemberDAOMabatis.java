package com.hy.assj.cmMember.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public int cmMemberEdit(CmMemberVO vo) {
		return getSqlSession().update(namespace+".cmMemberEdit",vo);
	}
	
	@Override
	public int cmPwdEdit(CmMemberVO vo) {
		return getSqlSession().update(namespace+".cmPwdEdit",vo);
	}

	@Override
	public HireNotiWithEsAndResumeVO selectHireNotiByHnNo(int hnNo) {
		Map<String, Integer> map = new HashMap<>();
		map.put("hnNo", hnNo);
		return getSqlSession().selectOne(namespace + ".selectHireNoti", map);
	}

	@Override
	public List<HireNotiWithEsAndResumeVO> selectHireNotiByCmNo(int cmNo) {
		Map<String, Integer> map = new HashMap<>();
		map.put("cmNo", cmNo);
		return getSqlSession().selectList(namespace + ".selectHireNoti", map);
	}

	@Override
	public List<HireNotiWithEsAndResumeVO> selectHnSummary(int cmNo) {
		return getSqlSession().selectList(namespace + ".selectHnSummary", cmNo);
	}

	@Override
	public int updateEmpSup(int esNo, String status) {
		Map<String, Object> map = new HashMap<>();
		map.put("esNo", esNo);
		map.put("status", status);
		return getSqlSession().update(namespace + ".updateEmpSup", map);
	}

	@Override
	public HireNotiWithEsAndResumeVO selectlatestHnNo(int cmNo) {
		return getSqlSession().selectOne(namespace + ".selectlatestHnNo", cmNo);
	}


}
