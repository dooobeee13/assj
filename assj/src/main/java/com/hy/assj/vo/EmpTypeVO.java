package com.hy.assj.vo;

//고용형태
public class EmpTypeVO {

	private int etNo;
	private String etName;
	private String etRemark;
	
	public int getEtNo() {
		return etNo;
	}
	public void setEtNo(int etNo) {
		this.etNo = etNo;
	}
	public String getEtName() {
		return etName;
	}
	public void setEtName(String etName) {
		this.etName = etName;
	}
	public String getEtRemark() {
		return etRemark;
	}
	public void setEtRemark(String etRemark) {
		this.etRemark = etRemark;
	}
	@Override
	public String toString() {
		return "EmpType [etNo=" + etNo + ", etName=" + etName + ", etRemark=" + etRemark + "]";
	}
	
}
