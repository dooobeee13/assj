package com.hy.assj.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDao;
	
	@Override
	public int insertMemMember(MemberVO vo) {
		return memberDao.insertMemMember(vo);
	}

	@Override
	public boolean duplicationId(String memId) {
		int result=memberDao.duplicationId(memId);
		if(result>0) {
			return true;  //해당 아이디 존재
		}else {
			return false; //해당아이디 없음
		}
		
	}


}
