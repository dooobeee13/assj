package com.hy.assj.member.model;

public interface MemberDAO {
	public int insertMemMember(MemberVO vo);
	public int duplicationId(String memId);
}
