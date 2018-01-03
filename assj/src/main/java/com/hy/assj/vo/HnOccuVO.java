package com.hy.assj.vo;

public class HnOccuVO {
	
	private int hnOccuNo;
	private int occuNo;
	private int hnNo;
	
	public int getHnOccuNo() {
		return hnOccuNo;
	}
	public void setHnOccuNo(int hnOccuNo) {
		this.hnOccuNo = hnOccuNo;
	}
	public int getOccuNo() {
		return occuNo;
	}
	public void setOccuNo(int occuNo) {
		this.occuNo = occuNo;
	}
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	@Override
	public String toString() {
		return "HnOccuVO [hnOccuNo=" + hnOccuNo + ", occuNo=" + occuNo + ", hnNo=" + hnNo + "]";
	}
	
}
