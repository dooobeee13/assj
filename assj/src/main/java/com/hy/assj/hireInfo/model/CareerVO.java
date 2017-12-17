package com.hy.assj.hireInfo.model;

public class CareerVO {
	
	private int carrerNo;
	private String careerName;
	private String careerRemark;
	
	public int getCarrerNo() {
		return carrerNo;
	}
	public void setCarrerNo(int carrerNo) {
		this.carrerNo = carrerNo;
	}
	public String getCareerName() {
		return careerName;
	}
	public void setCareerName(String careerName) {
		this.careerName = careerName;
	}
	public String getCareerRemark() {
		return careerRemark;
	}
	public void setCareerRemark(String careerRemark) {
		this.careerRemark = careerRemark;
	}
	@Override
	public String toString() {
		return "Career [carrerNo=" + carrerNo + ", careerName=" + careerName + ", careerRemark=" + careerRemark + "]";
	}
	
}
