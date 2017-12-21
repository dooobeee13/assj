package com.hy.assj.member.model;

import java.util.Map;

public interface MemberDAO {
	public int insertMemMember(MemberVO vo);
	public int duplicationId(String memId);
	public String selectPwd(String memId);
	public MemberVO selectMember(String memId);
	public int memberOut(String memId);
	public int memberEdit(MemberVO vo);
	public int memPwdEdit(MemberVO vo);
	
	//네이버로그인
	public MemberVO selectMemberBySns(Map<String, String> map);
	public int countMemberBySns(Map<String, String> map);
	public int insertMemberBySns(MemberVO vo);
	
}
