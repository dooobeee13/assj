package com.hy.assj.recruit.model;

import java.util.List;

public interface RecruitDAO {

	RHireNotiVO selectHireNotiByHnNo(int hnNo);
	
	List<RHireNotiVO> selectHireNotiBySearchValue(RSearchValue searchValue);
	
	RMemberVO selectMemberInfo(int memNo);
	
	int insertScrap(RScrapVO vo);
	
	int deleteScrap(RScrapVO vo);
}
