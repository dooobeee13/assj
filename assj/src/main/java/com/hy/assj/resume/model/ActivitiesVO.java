package com.hy.assj.resume.model;

import java.util.List;

public class ActivitiesVO {
	
	private int actNo;
	private int resumeNo;
	private String actHistory;
	
	private List<ActivitiesVO> actVOList;
	
	public List<ActivitiesVO> getActVOList() {
		return actVOList;
	}
	public void setActVOList(List<ActivitiesVO> actVOList) {
		this.actVOList = actVOList;
	}
	public int getActNo() {
		return actNo;
	}
	public void setActNo(int actNo) {
		this.actNo = actNo;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getActHistory() {
		return actHistory;
	}
	public void setActHistory(String actHistory) {
		this.actHistory = actHistory;
	}
	@Override
	public String toString() {
		return "ActivitiesVO [actNo=" + actNo + ", resumeNo=" + resumeNo + ", actHistory=" + actHistory + ", actVOList="
				+ actVOList + "]";
	}
	
	
	

}
