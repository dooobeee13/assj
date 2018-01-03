package com.hy.assj.vo;

public class HnEtVO {
	
	private int hnEtNo;
	private int etNo;
	private int hnNo;
	
	public int getHnEtNo() {
		return hnEtNo;
	}
	public void setHnEtNo(int hnEtNo) {
		this.hnEtNo = hnEtNo;
	}
	public int getEtNo() {
		return etNo;
	}
	public void setEtNo(int etNo) {
		this.etNo = etNo;
	}
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	@Override
	public String toString() {
		return "HnEtVO [hnEtNo=" + hnEtNo + ", etNo=" + etNo + ", hnNo=" + hnNo + "]";
	}
	
}
