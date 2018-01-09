package com.hy.assj.main.model;

public class MOccupationVO {

	private int occuNo;
	private String occuName;
	private String occuRemark;
	private String topOccuName;
	
	public int getOccuNo() {
		return occuNo;
	}
	public void setOccuNo(int occuNo) {
		this.occuNo = occuNo;
	}
	public String getOccuName() {
		return occuName;
	}
	public void setOccuName(String occuName) {
		this.occuName = occuName;
	}
	public String getOccuRemark() {
		return occuRemark;
	}
	public void setOccuRemark(String occuRemark) {
		this.occuRemark = occuRemark;
	}
	public String getTopOccuName() {
		return topOccuName;
	}
	public void setTopOccuName(String topOccuName) {
		this.topOccuName = topOccuName;
	}
	@Override
	public String toString() {
		return "MOccupationVO [occuNo=" + occuNo + ", occuName=" + occuName + ", occuRemark=" + occuRemark
				+ ", topOccuName=" + topOccuName + "]";
	}
	
}
