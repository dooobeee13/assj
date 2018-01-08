package com.hy.assj.recruit.model;

import java.util.List;
import java.util.Map;

public interface RecruitDAO {

	RHireNotiVO selectHireNotiByHnNo(int hnNo);
	
	List<RHireNotiVO> selectHireNotiBySearchValue(RSearchValue searchValue);
	
	RMemberVO selectMemberInfo(int memNo);
	
	int insertScrap(RScrapVO vo);
	
	int deleteScrap(RScrapVO vo);
	
	int insertEmpSup(Map<String, Integer> empSupMap);
	
	int deleteEmpSup(Map<String, Integer> empSupMap);
}
