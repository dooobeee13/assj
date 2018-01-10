package com.hy.assj.analytics.model;

import java.util.List;
import java.util.Map;

public interface AnalyticsService {
	public List<AnalyticsVO> selectAllAnaly();
	public Map<String, Object> selectAnalyToday();
	public void newAnalytics();
	public int updateTotalCount();
	public int updateCountView();
	public int updateCountViewDown();
	public int updatePageview();
	public int totalCountView();
	public int totalCount();
	public int totalPageview();
	public int selectTotalMemCountNotToday();
	public int selectTotalMemCountToday();
	public int selectTotalHireNoti();
	public int selectTotalResume();
	public int selectTotalNews();
	public int selectTotalIntroduction();
	public List<Map<String, Object>> selectTotalCompanyScale();
	public int selectTotalMemCount();
	public int selectTotalReboard();
	public int selectTodayReboard();
	public int selectDeadlineHN();
	public int selectTotalHN();
}
