package com.hy.assj.cmMember.model;

import com.hy.assj.member.model.MemberVO;

public interface CmMemberDAO {
	public int insertCmMemMember(CmMemberVO vo);
	public String selectPwd(String cmId);
	public CmMemberVO selectMember(String cmId);
	public int cmMemberOut(String cmId);
	public int cmMemberEdit(CmMemberVO vo);
	public int cmPwdEdit(CmMemberVO vo);
	
}
