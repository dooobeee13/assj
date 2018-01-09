package com.hy.assj.cmMember.model;

import java.util.List;

public interface CmMemberDAO {
	public int insertCmMemMember(CmMemberVO vo);
	public String selectPwd(String cmId);
	public CmMemberVO selectMember(String cmId);
	public int cmMemberOut(String cmId);
	public int cmMemberEdit(CmMemberVO vo);
	public int cmPwdEdit(CmMemberVO vo);
	
	HireNotiWithEsAndResumeVO selectHireNotiByHnNo(int hnNo);
	List<HireNotiWithEsAndResumeVO> selectHireNotiByCmNo(int cmNo);
	List<HireNotiWithEsAndResumeVO> selectHnSummary(int cmNo);
	int updateEmpSup(int esNo, String status);
	HireNotiWithEsAndResumeVO selectlatestHnNo(int cmNo);
	int countCurrHireNoti(int cmNo);
	int countUnopendEs(int cmNo);
}
