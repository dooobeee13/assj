package com.hy.assj.main.model;

public class MSectorsVO {
	
	private int secNo;
	private String secName;
	private String secRemark;
	private String topSecName;
	
	public int getSecNo() {
		return secNo;
	}
	public void setSecNo(int secNo) {
		this.secNo = secNo;
	}
	public String getSecName() {
		return secName;
	}
	public void setSecName(String secName) {
		this.secName = secName;
	}
	public String getSecRemark() {
		return secRemark;
	}
	public void setSecRemark(String secRemark) {
		this.secRemark = secRemark;
	}
	public String getTopSecName() {
		return topSecName;
	}
	public void setTopSecName(String topSecName) {
		this.topSecName = topSecName;
	}
	@Override
	public String toString() {
		return "MSectorsVO [secNo=" + secNo + ", secName=" + secName + ", secRemark=" + secRemark + ", topSecName="
				+ topSecName + "]";
	}

}
