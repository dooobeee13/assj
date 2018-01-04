package com.hy.assj.vo;

public class HnSecVO {
	
	private int hnSecNo;
	private int secNo;
	private int hnNo;
	
	public int getHnSecNo() {
		return hnSecNo;
	}
	public void setHnSecNo(int hnSecNo) {
		this.hnSecNo = hnSecNo;
	}
	public int getSecNo() {
		return secNo;
	}
	public void setSecNo(int secNo) {
		this.secNo = secNo;
	}
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	@Override
	public String toString() {
		return "HnSecVO [hnSecNo=" + hnSecNo + ", secNo=" + secNo + ", hnNo=" + hnNo + "]";
	}
	
}
