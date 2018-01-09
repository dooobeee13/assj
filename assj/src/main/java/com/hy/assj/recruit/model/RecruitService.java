package com.hy.assj.recruit.model;

import java.util.Map;

public interface RecruitService {

	String INSERT_SCRAP = "INSERT_SCRAP";
	String DELETE_SCRAP = "DELETE_SCRAP";
	String REQUIRED_LOGIN = "REQUIRED_LOGIN";
	String SUCCESS_APPLY = "SUCCESS_APPLY";
	String DELETE_APPY = "DELETE_APPY";
	
	RHireNotiVO recruitDetail(int hnNo);
	
	RMemberVO getMemberInfo(int memNo);
	
	String addScrap(RMemberVO memberInfo, int hnNo);
	String deleteScrap(RMemberVO memberInfo, int hnNo);
	
	String apply(Map<String, Integer> empSupMap);
	String deleteApply(RMemberVO memberInfo, int hnNo);
}
