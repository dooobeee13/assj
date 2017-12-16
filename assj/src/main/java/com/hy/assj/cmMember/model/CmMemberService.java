package com.hy.assj.cmMember.model;

public interface CmMemberService {
	//로그인 처리 관련 상수
	public static final int LOGIN_OK=1;  //로그인 성공
	public static final int ID_NONE=2;   //해당 아이디 없음
	int PWD_DISAGREE=3; //비밀번호 불일치
		
	public int insertCmMemMember(CmMemberVO vo);
	public int loginCheck(String cmId, String cmPwd);
	public CmMemberVO selectMember(String cmId);
}
