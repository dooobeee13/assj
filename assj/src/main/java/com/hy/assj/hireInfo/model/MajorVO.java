package com.hy.assj.hireInfo.model;

public class MajorVO {

	private int majorNo;
	private String majorName;
	private String majorRemark;
	private int majorTopNo;
	
	public int getMajorNo() {
		return majorNo;
	}
	public void setMajorNo(int majorNo) {
		this.majorNo = majorNo;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getMajorRemark() {
		return majorRemark;
	}
	public void setMajorRemark(String majorRemark) {
		this.majorRemark = majorRemark;
	}
	public int getMajorTopNo() {
		return majorTopNo;
	}
	public void setMajorTopNo(int majorTopNo) {
		this.majorTopNo = majorTopNo;
	}
	@Override
	public String toString() {
		return "Major [majorNo=" + majorNo + ", majorName=" + majorName + ", majorRemark=" + majorRemark
				+ ", majorTopNo=" + majorTopNo + "]";
	}
	
}
