package com.hy.assj.member.model;

public interface MemberService {
	//아이디 중복검사시 사용하는 상수
	public static final int EXIST_ID=1;  //해당 아이디가 이미 존재
	public static final int NONE_EXIST_ID=2; //해당 아이디가 없음
		
	public int insertMemMember(MemberVO vo);
	public boolean duplicationId(String memId);
}
