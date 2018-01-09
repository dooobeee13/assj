package com.hy.assj.main.model;

import java.util.List;

import com.hy.assj.recruit.model.RHireNotiVO;

public interface MainService {

	List<MHireNotiVO> selectHnSummaryList();
	List<RHireNotiVO> selectHireNotiList();
	int countCurrHireNoti(int cmNo);
	int countUnopendEs(int cmNo);
	int countResumeByMemNo(int memNo);
	int countScrapByMemNo(int memNo);
}
