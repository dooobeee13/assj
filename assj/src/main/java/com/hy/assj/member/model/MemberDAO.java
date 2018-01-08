package com.hy.assj.member.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.hirenoti.model.HireNotiSearchVO;

public interface MemberDAO {
	public int insertMemMember(MemberVO vo);
	public int duplicationId(String memId);
	public String selectPwd(String memId);
	public MemberVO selectMember(String memId);
	public int memberOut(String memId);
	public int memberEdit(MemberVO vo);
	public int memPwdEdit(MemberVO vo);
	public List<Map<String, Object>> scrapList(HireNotiSearchVO hireNotiSearchVO);
	public int scrapTotalRecordCount(HireNotiSearchVO hireNotiSearchVO);
	public int deleteScrap(int hnNo);
		
	//네이버로그인
	public MemberVO selectMemberBySns(Map<String, String> map);
	public int countMemberBySns(Map<String, String> map);
	public int insertMemberBySns(MemberVO vo);
	
	int countResumeByMemNo(int memNo);
	int countScrapByMemNo(int memNo);
	
}
