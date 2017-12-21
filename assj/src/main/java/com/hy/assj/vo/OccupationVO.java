package com.hy.assj.vo;

//직종
public class OccupationVO {

	private int occuNo;
	private String occuName;
	private String occuRemark;
	private int occuTopNo;
	
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
	public int getOccuTopNo() {
		return occuTopNo;
	}
	public void setOccuTopNo(int occuTopNo) {
		this.occuTopNo = occuTopNo;
	}
	@Override
	public String toString() {
		return "Occupation [occuNo=" + occuNo + ", occuName=" + occuName + ", occuRemark=" + occuRemark + ", occuTopNo="
				+ occuTopNo + "]";
	}
	
}
