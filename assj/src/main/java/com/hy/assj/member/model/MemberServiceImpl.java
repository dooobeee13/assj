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

	@Override
	public int loginCheck(String memId, String memPwd) {
		int result=0;
		String dbPwd = memberDao.selectPwd(memId);
		if(dbPwd==null || dbPwd.isEmpty()) {
			result=ID_NONE;	//해당 아이디 없음
		}else {
			if(dbPwd.equals(memPwd)) {
				result=LOGIN_OK;	//로그인 성공
			}else {
				result=PWD_DISAGREE; 	//비밀번호 불일치
			}
		}
		return result;
	}

	@Override
	public MemberVO selectMember(String memId) {
		return memberDao.selectMember(memId);
	}

	@Override
	public int memberOut(String memId) {
		return memberDao.memberOut(memId);
	}


}
