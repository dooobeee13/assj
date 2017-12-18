package com.hy.assj.vo;

//직책
public class PositionVO {

	private int positionNo;
	private String positionName;
	private String positionRemark;
	
	public int getPositionNo() {
		return positionNo;
	}
	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public String getPositionRemark() {
		return positionRemark;
	}
	public void setPositionRemark(String positionRemark) {
		this.positionRemark = positionRemark;
	}
	@Override
	public String toString() {
		return "Position [positionNo=" + positionNo + ", positionName=" + positionName + ", positionRemark="
				+ positionRemark + "]";
	}
	
}
