package com.hy.assj.hireInfo.model;

public class EducationVO {
	
	private int eduNo;
	private String eduName;
	private String eduRemark;
	
	public int getEduNo() {
		return eduNo;
	}
	public void setEduNo(int eduNo) {
		this.eduNo = eduNo;
	}
	public String getEduName() {
		return eduName;
	}
	public void setEduName(String eduName) {
		this.eduName = eduName;
	}
	public String getEduRemark() {
		return eduRemark;
	}
	public void setEduRemark(String eduRemark) {
		this.eduRemark = eduRemark;
	}
	@Override
	public String toString() {
		return "Education [eduNo=" + eduNo + ", eduName=" + eduName + ", eduRemark=" + eduRemark + "]";
	}

}
