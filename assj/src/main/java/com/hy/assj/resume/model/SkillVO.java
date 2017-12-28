package com.hy.assj.resume.model;

import java.util.List;

public class SkillVO {
	
	private int skillNo;
	private int resumeNo;
	private String skillAbility;
	private String skillLevel;
	private String skillDetail;
	
	private List<SkillVO> skillVOList;
	
	public List<SkillVO> getSkillVOList() {
		return skillVOList;
	}
	public void setSkillVOList(List<SkillVO> skillVOList) {
		this.skillVOList = skillVOList;
	}
	public int getSkillNo() {
		return skillNo;
	}
	public void setSkillNo(int skillNo) {
		this.skillNo = skillNo;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getSkillAbility() {
		return skillAbility;
	}
	public void setSkillAbility(String skillAbility) {
		this.skillAbility = skillAbility;
	}
	public String getSkillLevel() {
		return skillLevel;
	}
	public void setSkillLevel(String skillLevel) {
		this.skillLevel = skillLevel;
	}
	public String getSkillDetail() {
		return skillDetail;
	}
	public void setSkillDetail(String skillDetail) {
		this.skillDetail = skillDetail;
	}
	@Override
	public String toString() {
		return "SkillVO [skillNo=" + skillNo + ", resumeNo=" + resumeNo + ", skillAbility=" + skillAbility
				+ ", skillLevel=" + skillLevel + ", skillDetail=" + skillDetail + ", skillVOList=" + skillVOList + "]";
	}

	
	

}
