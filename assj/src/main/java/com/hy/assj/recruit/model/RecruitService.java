package com.hy.assj.recruit.model;

public interface RecruitService {

	String INSERT_SCRAP = "INSERT_SCRAP";
	String DELETE_SCRAP = "DELETE_SCRAP";
	String REQUIRED_LOGIN = "REQUIRED_LOGIN";
	
	RHireNotiVO recruitDetail(int hnNo);
	
	RMemberVO getMemberInfo(int memNo);
	
	String addScrap(RMemberVO memberInfo, int hnNo);
	
	String deleteScrap(RMemberVO memberInfo, int hnNo);
	
}
