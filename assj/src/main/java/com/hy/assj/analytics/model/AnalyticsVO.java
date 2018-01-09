package com.hy.assj.analytics.model;

import java.sql.Timestamp;

//통계 처리 
public class AnalyticsVO {
	private int analyNo; //고유번호
    private int countView; //페이지 이동 수
    private int totalCount; //총 방문객
    private int pageview; //페이지 뷰
    private Timestamp viewDate; //오늘 날짜

	public AnalyticsVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AnalyticsVO(int analyNo, int countView, int totalCount, int pageview, Timestamp viewDate) {
		super();
		this.analyNo = analyNo;
		this.countView = countView;
		this.totalCount = totalCount;
		this.pageview = pageview;
		this.viewDate = viewDate;
	}

	public int getAnalyNo() {
		return analyNo;
	}

	public void setAnalyNo(int analyNo) {
		this.analyNo = analyNo;
	}

	public int getCountView() {
		return countView;
	}

	public void setCountView(int countView) {
		this.countView = countView;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageview() {
		return pageview;
	}

	public void setPageview(int pageview) {
		this.pageview = pageview;
	}

	public Timestamp getViewDate() {
		return viewDate;
	}

	public void setViewDate(Timestamp viewDate) {
		this.viewDate = viewDate;
	}
    
	
}
