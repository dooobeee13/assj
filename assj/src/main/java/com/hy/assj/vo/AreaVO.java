package com.hy.assj.hireInfo.model;

public class AreaVO {

	private int areaNo;
	private String areaName;
	private String areaRemark;
	private int areaTopNo;
	
	public int getAreaNo() {
		return areaNo;
	}
	public void setAreaNo(int areaNo) {
		this.areaNo = areaNo;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAreaRemark() {
		return areaRemark;
	}
	public void setAreaRemark(String areaRemark) {
		this.areaRemark = areaRemark;
	}
	public int getAreaTopNo() {
		return areaTopNo;
	}
	public void setAreaTopNo(int areaTopNo) {
		this.areaTopNo = areaTopNo;
	}
	@Override
	public String toString() {
		return "AreaVO [areaNo=" + areaNo + ", areaName=" + areaName + ", areaRemark=" + areaRemark + ", areaTopNo="
				+ areaTopNo + "]";
	}
	
}
