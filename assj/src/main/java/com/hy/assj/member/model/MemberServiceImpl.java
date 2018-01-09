package com.hy.assj.member.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hy.assj.common.SearchVO;
import com.hy.assj.hirenoti.model.HireNotiSearchVO;
import com.hy.assj.hirenoti.model.HireNotiVO;
import com.hy.assj.notice.model.NoticeVO;

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

	@Override
	public int memberEdit(MemberVO vo) {
		return memberDao.memberEdit(vo);
	}

	@Override
	public int memPwdEdit(MemberVO vo) {
		return memberDao.memPwdEdit(vo);
	}

	@Override
	public MemberVO naverLogin(Map<String, String> map) {
		//아이디 체크해서 없을때 insert
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("id", map.get("id"));
		searchMap.put("type", "naver");
		int cnt = memberDao.countMemberBySns(searchMap);
		
		if (cnt == 0) {
			String id = map.get("id");
			String email = map.get("email");
			String image = map.get("profile_image");
			String gender = map.get("gender");
			String name = map.get("name");
			MemberVO vo = new MemberVO();
			vo.setMemName(name);
			vo.setMemEmail(email);
			vo.setMemGender("M".equals(gender) ? "남자" : "여자");
			vo.setMemSnsType("naver");
			vo.setMemSnsId(id);
			vo.setMemPhoto(image);
			
			memberDao.insertMemberBySns(vo);
		}
		
		return memberDao.selectMemberBySns(searchMap); 
	}

	@Override
	public List<Map<String, Object>> scrapList(HireNotiSearchVO hireNotiSearchVO) {
		return memberDao.scrapList(hireNotiSearchVO);
	}

	@Override
	public int scrapTotalRecordCount(HireNotiSearchVO hireNotiSearchVO) {
		return memberDao.scrapTotalRecordCount(hireNotiSearchVO);
	}

	@Override
	@Transactional
	public int scrapDelMulti(List<HireNotiVO> list) {
		int cnt=0;
		try {
			for(HireNotiVO vo: list) {
				int hnNo=vo.getHnNo();
				
				//체크한 스크랩공고만 삭제
				if(hnNo!=0) {
					cnt=memberDao.deleteScrap(hnNo);
				}
			}//for
				
		}catch(RuntimeException e) {
			cnt=0;
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public int deleteScrap(int hnNo) {
		return memberDao.deleteScrap(hnNo);
	}

	@Override
	public List<Map<String, Object>> psMemManage(SearchVO searchVO) {
		return memberDao.psMemManage(searchVO);
	}

	@Override
	public List<Map<String, Object>> cmMemManage(SearchVO searchVO) {
		return memberDao.cmMemManage(searchVO);
	}

	@Override
	public int psMemTotalCount(SearchVO searchVO) {
		return memberDao.psMemTotalCount(searchVO);
	}

	@Override
	public int cmMemTotalCount(SearchVO searchVO) {
		return memberDao.cmMemTotalCount(searchVO);
	}

	@Override
	public int psMemDelete(int memNo) {
		return memberDao.psMemDelete(memNo);
	}

	@Override
	public int cmMemDelete(int cmNo) {
		return memberDao.cmMemDelete(cmNo);
	}

	@Override
	public int empSupCount(int memNo) {
		return memberDao.empSupCount(memNo);
	}

}
