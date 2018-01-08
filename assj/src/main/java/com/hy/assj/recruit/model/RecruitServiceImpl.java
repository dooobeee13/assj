package com.hy.assj.recruit.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecruitServiceImpl implements RecruitService {

	@Autowired
	private RecruitDAO recruitDao;
	
	@Override
	public RHireNotiVO recruitDetail(int hnNo) {
		return recruitDao.selectHireNotiByHnNo(hnNo);
	}

	@Override
	public RMemberVO getMemberInfo(int memNo) {
		return recruitDao.selectMemberInfo(memNo);
	}

	@Override
	public String addScrap(RMemberVO memberInfo, int hnNo) {
		if (memberInfo == null) {
			return RecruitService.REQUIRED_LOGIN;
		} else {
			RScrapVO vo = new RScrapVO();
			vo.setMemNo(memberInfo.getMemNo());
			vo.setHnNo(hnNo);
			recruitDao.insertScrap(vo);
			return RecruitService.INSERT_SCRAP;
		}
	}

	@Override
	public String deleteScrap(RMemberVO memberInfo, int hnNo) {
		if (memberInfo == null) {
			return RecruitService.REQUIRED_LOGIN;
		} else {
			RScrapVO vo = new RScrapVO();
			vo.setMemNo(memberInfo.getMemNo());
			vo.setHnNo(hnNo);
			recruitDao.deleteScrap(vo);
			return RecruitService.DELETE_SCRAP;
		}
	}

	@Override
	public String apply(Map<String, Integer> empSupMap) {
		recruitDao.insertEmpSup(empSupMap);
		return null;
	}

	
	@Override
	public String deleteApply(RMemberVO memberInfo, int hnNo) {
		if (memberInfo == null) {
			return RecruitService.REQUIRED_LOGIN;
		} else {
			Map<String, Integer> map = new HashMap<>();
			map.put("hnNo", hnNo);
			map.put("memNo", memberInfo.getMemNo());
			recruitDao.deleteEmpSup(map);
			return RecruitService.DELETE_APPY;
		}
	}

}
