package com.hy.assj.resume.model;

import java.util.List;

public class SchoolHistoryVO {
	
	private int shNo;
	private int resumeNo;
	private String shAyear;
	private String shGyear;
	private String shAwhether;
	private String shGwhether;
	private String shSname;
	private String shMajor;
	private String shMajordetail;
	private String shGrade;
	private int areaNo;
	private int eduNo;
	
	private List<SchoolHistoryVO> shVOList;
	
	public List<SchoolHistoryVO> getShVOList() {
		return shVOList;
	}
	public void setShVOList(List<SchoolHistoryVO> shVOList) {
		this.shVOList = shVOList;
	}
	public int getShNo() {
		return shNo;
	}
	public void setShNo(int shNo) {
		this.shNo = shNo;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getShAyear() {
		return shAyear;
	}
	public void setShAyear(String shAyear) {
		this.shAyear = shAyear;
	}
	public String getShGyear() {
		return shGyear;
	}
	public void setShGyear(String shGyear) {
		this.shGyear = shGyear;
	}
	public String getShAwhether() {
		return shAwhether;
	}
	public void setShAwhether(String shAwhether) {
		this.shAwhether = shAwhether;
	}
	public String getShGwhether() {
		return shGwhether;
	}
	public void setShGwhether(String shGwhether) {
		this.shGwhether = shGwhether;
	}
	public String getShSname() {
		return shSname;
	}
	public void setShSname(String shSname) {
		this.shSname = shSname;
	}
	public String getShMajor() {
		return shMajor;
	}
	public void setShMajor(String shMajor) {
		this.shMajor = shMajor;
	}
	public String getShMajordetail() {
		return shMajordetail;
	}
	public void setShMajordetail(String shMajordetail) {
		this.shMajordetail = shMajordetail;
	}
	public String getShGrade() {
		return shGrade;
	}
	public void setShGrade(String shGrade) {
		this.shGrade = shGrade;
	}
	public int getAreaNo() {
		return areaNo;
	}
	public void setAreaNo(int areaNo) {
		this.areaNo = areaNo;
	}
	public int getEduNo() {
		return eduNo;
	}
	public void setEduNo(int eduNo) {
		this.eduNo = eduNo;
	}
	@Override
	public String toString() {
		return "SchoolHistoryVO [shNo=" + shNo + ", resumeNo=" + resumeNo + ", shAyear=" + shAyear + ", shGyear="
				+ shGyear + ", shAwhether=" + shAwhether + ", shGwhether=" + shGwhether + ", shSname=" + shSname
				+ ", shMajor=" + shMajor + ", shMajordetail=" + shMajordetail + ", shGrade=" + shGrade + ", areaNo="
				+ areaNo + ", eduNo=" + eduNo + ", shVOList=" + shVOList + "]";
	}
	
	

}
