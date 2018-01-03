package com.hy.assj.recruit.model;

import java.util.List;

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

}
