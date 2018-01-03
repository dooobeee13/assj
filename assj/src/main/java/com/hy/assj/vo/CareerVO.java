package com.hy.assj.vo;

//경력
public class CareerVO {
	
	private int careerNo;
	private String careerName;
	private String careerRemark;
	
	public int getCareerNo() {
		return careerNo;
	}
	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
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
		return "Career [careerNo=" + careerNo + ", careerName=" + careerName + ", careerRemark=" + careerRemark + "]";
	}
	
}
