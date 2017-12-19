package com.hy.assj.vo;

//기업규모
public class CompScaleVO {

	private int csNo;
	private String csName;
	private String csRemark;
	
	public int getCsNo() {
		return csNo;
	}
	public void setCsNo(int csNo) {
		this.csNo = csNo;
	}
	public String getCsName() {
		return csName;
	}
	public void setCsName(String csName) {
		this.csName = csName;
	}
	public String getCsRemark() {
		return csRemark;
	}
	public void setCsRemark(String csRemark) {
		this.csRemark = csRemark;
	}
	@Override
	public String toString() {
		return "CompScale [csNo=" + csNo + ", csName=" + csName + ", csRemark=" + csRemark + "]";
	}
	
}
