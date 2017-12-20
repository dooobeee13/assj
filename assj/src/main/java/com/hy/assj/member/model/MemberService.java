package com.hy.assj.member.model;

public interface MemberService {
	//아이디 중복검사시 사용하는 상수
	public static final int EXIST_ID=1;  //해당 아이디가 이미 존재
	public static final int NONE_EXIST_ID=2; //해당 아이디가 없음
	
	//로그인 처리 관련 상수
	public static final int LOGIN_OK=1;  //로그인 성공
	public static final int ID_NONE=2;   //해당 아이디 없음
	int PWD_DISAGREE=3; //비밀번호 불일치
		
	public int insertMemMember(MemberVO vo);
	public boolean duplicationId(String memId);
	public int loginCheck(String memId, String memPwd);
	public MemberVO selectMember(String memId);
	public int memberOut(String memId);
}
