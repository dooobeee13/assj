package com.hy.assj.cmMember.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CmMemberServiceImpl implements CmMemberService{

	@Autowired
	private CmMemberDAO cmMemberDao;
	
	@Override
	public int insertCmMemMember(CmMemberVO vo) {
		return cmMemberDao.insertCmMemMember(vo);
	}

	@Override
	public int loginCheck(String cmId, String cmPwd) {
		int result=0;
		String dbPwd = cmMemberDao.selectPwd(cmId);
		if(dbPwd==null || dbPwd.isEmpty()) {
			result=ID_NONE;	//해당 아이디 없음
		}else {
			if(dbPwd.equals(cmPwd)) {
				result=LOGIN_OK;	//로그인 성공
			}else {
				result=PWD_DISAGREE; 	//비밀번호 불일치
			}
		}
		return result;
	}

	@Override
	public CmMemberVO selectMember(String cmId) {
		return cmMemberDao.selectMember(cmId);
	}

	@Override
	public int cmMemberOut(String cmId) {
		return cmMemberDao.cmMemberOut(cmId);
	}

	@Override
	public int cmPwdEdit(CmMemberVO vo) {
		return cmMemberDao.cmPwdEdit(vo);
	}

	@Override
	public int cmMemberEdit(CmMemberVO vo) {
		return cmMemberDao.cmMemberEdit(vo);
	}
	
}
