package com.hy.assj.vo;

public class HnPosVO {
	
	private int hnPosNo;
	private int positionNo;
	private int hnNo;
	
	public int getHnPosNo() {
		return hnPosNo;
	}
	public void setHnPosNo(int hnPosNo) {
		this.hnPosNo = hnPosNo;
	}
	public int getPositionNo() {
		return positionNo;
	}
	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	@Override
	public String toString() {
		return "HnPosVO [hnPosNo=" + hnPosNo + ", positionNo=" + positionNo + ", hnNo=" + hnNo + "]";
	}
	
}
