package com.hy.assj.main.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.cmMember.model.CmMemberDAO;
import com.hy.assj.member.model.MemberDAO;
import com.hy.assj.recruit.model.RHireNotiVO;
import com.hy.assj.recruit.model.RecruitDAO;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDAO mainDao;
	
	@Autowired
	private CmMemberDAO cmMemberDao;
	
	@Autowired
	private MemberDAO memberDao;
	
	@Autowired
	private RecruitDAO recruitDao;
	
	/*@Override
	public List<MHireNotiVO> selectHireNotiList() {
		return mainDao.selectHireNotiList();
	}*/
	@Override
	public List<RHireNotiVO> selectHireNotiList() {
		return recruitDao.selectHireNoti();
	}

	@Override
	public int countCurrHireNoti(int cmNo) {
		return cmMemberDao.countCurrHireNoti(cmNo);
	}

	@Override
	public int countUnopendEs(int cmNo) {
		return cmMemberDao.countUnopendEs(cmNo);
	}

	@Override
	public int countResumeByMemNo(int memNo) {
		return memberDao.countResumeByMemNo(memNo);
	}

	@Override
	public int countScrapByMemNo(int memNo) {
		return memberDao.countScrapByMemNo(memNo);
	}

	@Override
	public List<MNoticeVO> getRecentNoticeList() {
		return mainDao.selectRecentNotice();
	}

	@Override
	public List<MNewsVO> getRecentNews() {
		return mainDao.selectRecentNews();
	}

	@Override
	public List<MNewsVO> selectNewsByKeyword(String keyword) {
		return mainDao.selectNewsByKeyword(keyword);
	}

	@Override
	public List<MOccupationVO> selectOccuByKeyword(String keyword) {
		return mainDao.selectOccuByKeyword(keyword);
	}

	@Override
	public List<MSectorsVO> selectSecByKeyword(String keyword) {
		return mainDao.selectSecByKeyword(keyword);
	}

	@Override
	public List<RHireNotiVO> selectHireNotiByKeyword(String keyword) {
		return recruitDao.selectHireNotiByKeyword(keyword);
	}
	
	public List<MHireNotiVO> selectHnSummaryList() {
		return mainDao.selectHireNotiList();
	}
	
}
