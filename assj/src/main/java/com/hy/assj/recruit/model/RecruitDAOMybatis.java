package com.hy.assj.recruit.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class RecruitDAOMybatis extends SqlSessionDaoSupport implements RecruitDAO {

	private final String namespace = "config.mybatis.mapper.oracle.recruit";
	
	@Override
	public RHireNotiVO selectHireNotiByHnNo(int hnNo) {
		return getSqlSession().selectOne(namespace + ".selectHireNotiByHnNo", hnNo);
	}

	@Override
	public List<RHireNotiVO> selectHireNotiBySearchValue(RSearchValue searchValue) {
		return getSqlSession().selectList(namespace + ".selectHireNotiBySearchValue", searchValue);
	}

	@Override
	public RMemberVO selectMemberInfo(int memNo) {
		return getSqlSession().selectOne(namespace + ".selectMemberInfo", memNo);
	}

	@Override
	public int insertScrap(RScrapVO vo) {
		return getSqlSession().insert(namespace + ".insertScrap", vo);
	}

	@Override
	public int deleteScrap(RScrapVO vo) {
		return getSqlSession().delete(namespace + ".deleteScrap", vo);
	}

	@Override
	public int insertEmpSup(Map<String, Integer> empSupMap) {
		return getSqlSession().insert(namespace + ".insertEmpSup", empSupMap);
	}

	@Override
	public int deleteEmpSup(Map<String, Integer> empSupMap) {
		return getSqlSession().delete(namespace + ".deleteEmpSup", empSupMap);
	}

	@Override
	public List<RHireNotiVO> selectHireNoti() {
		return getSqlSession().selectList(namespace + ".selectHireNoti");
	}

	@Override
	public List<RHireNotiVO> selectHireNotiByKeyword(String keyword) {
		return getSqlSession().selectList(namespace + ".selectHireNotiByKeyword", keyword);
	}

}
