package com.hy.assj.recruit.model;

import java.util.List;

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

	

}
