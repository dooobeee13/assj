package com.hy.assj.cmMember.model;

public interface CmMemberDAO {
	public int insertCmMemMember(CmMemberVO vo);
	public String selectPwd(String cmId);
	public CmMemberVO selectMember(String cmId);
	public int cmMemberOut(String cmId);
}
