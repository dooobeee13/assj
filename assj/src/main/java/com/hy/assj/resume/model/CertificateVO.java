package com.hy.assj.resume.model;

import java.util.List;

public class CertificateVO {

	private int cerNo;
	private int resumeNo;
	private String cerCategory;
	private String cerName;
	private String cerPublisher;
	private String cerAcceptScore;
	private String cerAcquiDate;
	
	private List<CertificateVO> cerVOList;
	
	public List<CertificateVO> getCerVOList() {
		return cerVOList;
	}
	public void setCerVOList(List<CertificateVO> cerVOList) {
		this.cerVOList = cerVOList;
	}
	public int getCerNo() {
		return cerNo;
	}
	public void setCerNo(int cerNo) {
		this.cerNo = cerNo;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getCerCategory() {
		return cerCategory;
	}
	public void setCerCategory(String cerCategory) {
		this.cerCategory = cerCategory;
	}
	public String getCerName() {
		return cerName;
	}
	public void setCerName(String cerName) {
		this.cerName = cerName;
	}
	public String getCerPublisher() {
		return cerPublisher;
	}
	public void setCerPublisher(String cerPublisher) {
		this.cerPublisher = cerPublisher;
	}
	public String getCerAcceptScore() {
		return cerAcceptScore;
	}
	public void setCerAcceptScore(String cerAcceptScore) {
		this.cerAcceptScore = cerAcceptScore;
	}
	public String getCerAcquiDate() {
		return cerAcquiDate;
	}
	public void setCerAcquiDate(String cerAcquiDate) {
		this.cerAcquiDate = cerAcquiDate;
	}
	@Override
	public String toString() {
		return "CertificateVO [cerNo=" + cerNo + ", resumeNo=" + resumeNo + ", cerCategory=" + cerCategory
				+ ", cerName=" + cerName + ", cerPublisher=" + cerPublisher + ", cerAcceptScore=" + cerAcceptScore
				+ ", cerAcquiDate=" + cerAcquiDate + ", cerVOList=" + cerVOList + "]";
	}
	
	
	
	
}
