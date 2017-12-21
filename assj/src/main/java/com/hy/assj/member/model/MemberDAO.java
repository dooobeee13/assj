package com.hy.assj.member.model;

public interface MemberDAO {
	public int insertMemMember(MemberVO vo);
	public int duplicationId(String memId);
	public String selectPwd(String memId);
	public MemberVO selectMember(String memId);
	public int memberOut(String memId);
	public int memberEdit(MemberVO vo);
	public int memPwdEdit(MemberVO vo);
}
