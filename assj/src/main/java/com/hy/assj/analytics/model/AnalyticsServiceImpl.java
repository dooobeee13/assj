package com.hy.assj.analytics.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnalyticsServiceImpl implements AnalyticsService{
	
	@Autowired
	private AnalyticsDAO analyDao;

	@Override
	public List<AnalyticsVO> selectAllAnaly() {
		return analyDao.selectAllAnaly();
	}

	@Override
	public Map<String, Object> selectAnalyToday() {
		// TODO Auto-generated method stub
		return analyDao.selectAnalyToday();
	}

	@Override
	public void newAnalytics() {
		analyDao.newAnalytics();
	}

	@Override
	public int updateTotalCount() {
		return analyDao.updateTotalCount();
	}

	@Override
	public int updateCountView() {
		// TODO Auto-generated method stub
		return analyDao.updateCountView();
	}

	@Override
	public int updatePageview() {
		// TODO Auto-generated method stub
		return analyDao.updatePageview();
	}

	@Override
	public int totalCountView() {
		// TODO Auto-generated method stub
		return analyDao.totalCountView();
	}

	@Override
	public int totalCount() {
		// TODO Auto-generated method stub
		return analyDao.totalCount();
	}

	@Override
	public int totalPageview() {
		// TODO Auto-generated method stub
		return analyDao.totalPageview();
	}

	@Override
	public int updateCountViewDown() {
		return analyDao.updateCountViewDown();
	}

	@Override
	public int selectTotalMemCountNotToday() {
		// TODO Auto-generated method stub
		return analyDao.selectTotalMemCountNotToday();
	}

	@Override
	public int selectTotalMemCountToday() {
		// TODO Auto-generated method stub
		return analyDao.selectTotalMemCountToday();
	}

	@Override
	public int selectTotalHireNoti() {
		// TODO Auto-generated method stub
		return analyDao.selectTotalHireNoti();
	}

	@Override
	public int selectTotalResume() {
		// TODO Auto-generated method stub
		return analyDao.selectTotalResume();
	}

	@Override
	public int selectTotalNews() {
		// TODO Auto-generated method stub
		return analyDao.selectTotalNews();
	}

	@Override
	public int selectTotalIntroduction() {
		// TODO Auto-generated method stub
		return analyDao.selectTotalIntroduction();
	}

	@Override
	public List<Map<String, Object>> selectTotalCompanyScale() {
		// TODO Auto-generated method stub
		return analyDao.selectTotalCompanyScale();
	}
}
