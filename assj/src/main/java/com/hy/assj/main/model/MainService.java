package com.hy.assj.main.model;

import java.util.List;

import com.hy.assj.recruit.model.RHireNotiVO;

public interface MainService {

	//List<MHireNotiVO> selectHireNotiList();
	List<RHireNotiVO> selectHireNotiList();
	int countCurrHireNoti(int cmNo);
	int countUnopendEs(int cmNo);
	int countResumeByMemNo(int memNo);
	int countScrapByMemNo(int memNo);
	List<MNoticeVO> getRecentNoticeList();
	List<MNewsVO> getRecentNews();
	List<MNewsVO> selectNewsByKeyword(String keyword);
	List<MOccupationVO> selectOccuByKeyword(String keyword);
	List<MSectorsVO> selectSecByKeyword(String keyword);
	List<RHireNotiVO> selectHireNotiByKeyword(String keyword);
}
