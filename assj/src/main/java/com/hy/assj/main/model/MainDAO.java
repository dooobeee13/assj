package com.hy.assj.main.model;

import java.util.List;

public interface MainDAO {

	List<MHireNotiVO> selectHireNotiList();
	List<MNoticeVO> selectRecentNotice();
	List<MNewsVO> selectRecentNews();
	List<MNewsVO> selectNewsByKeyword(String keyword);
	List<MOccupationVO> selectOccuByKeyword(String keyword);
	List<MSectorsVO> selectSecByKeyword(String keyword);
}
