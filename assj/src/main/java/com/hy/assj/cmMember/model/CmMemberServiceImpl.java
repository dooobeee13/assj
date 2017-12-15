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
	
}
