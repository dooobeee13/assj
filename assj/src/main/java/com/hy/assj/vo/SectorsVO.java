package com.hy.assj.vo;

//업종
public class SectorsVO {
	
	private int secNo;
	private String secName;
	private String secRemark;
	private int secTopNo;
	
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
	public int getSecTopNo() {
		return secTopNo;
	}
	public void setSecTopNo(int secTopNo) {
		this.secTopNo = secTopNo;
	}
	@Override
	public String toString() {
		return "Sectors [secNo=" + secNo + ", secName=" + secName + ", secRemark=" + secRemark + ", secTopNo="
				+ secTopNo + "]";
	}

}
