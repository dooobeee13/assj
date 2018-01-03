package com.hy.assj.resume.model;

import java.util.List;

public class IntroductionVO {

	private int introNo;
	private int resumeNo;
	private String introTitle;
	private String introContent;
	
	private List<IntroductionVO> introVOList;

	public int getIntroNo() {
		return introNo;
	}

	public void setIntroNo(int introNo) {
		this.introNo = introNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public String getIntroTitle() {
		return introTitle;
	}

	public void setIntroTitle(String introTitle) {
		this.introTitle = introTitle;
	}

	public String getIntroContent() {
		return introContent;
	}

	public void setIntroContent(String introContent) {
		this.introContent = introContent;
	}

	public List<IntroductionVO> getIntroVOList() {
		return introVOList;
	}

	public void setIntroVOList(List<IntroductionVO> introVOList) {
		this.introVOList = introVOList;
	}

	@Override
	public String toString() {
		return "IntroductionVO [introNo=" + introNo + ", resumeNo=" + resumeNo + ", introTitle=" + introTitle
				+ ", introContent=" + introContent + ", introVOList=" + introVOList + "]";
	}
	
	
	
}
