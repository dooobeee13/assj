package com.hy.assj.recruit.model;

//지역(상위지역 포함)
public class RAreaVO {

	private int areaNo;
	private String areaName;
	private String areaRemark;
	
	private RAreaVO topAreaVo;

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

	public RAreaVO getTopAreaVo() {
		return topAreaVo;
	}

	public void setTopAreaVo(RAreaVO topAreaVo) {
		this.topAreaVo = topAreaVo;
	}

	@Override
	public String toString() {
		return "RAreaVO [areaNo=" + areaNo + ", areaName=" + areaName + ", areaRemark=" + areaRemark + ", topAreaVo="
				+ topAreaVo + "]";
	}
	
}
