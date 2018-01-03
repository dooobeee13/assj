package com.hy.assj.vo;

public class HnMajorVO {
	
	private int hnMajorNo;
	private int majorNo;
	private int hnNo;
	
	public int getHnMajorNo() {
		return hnMajorNo;
	}
	public void setHnMajorNo(int hnMajorNo) {
		this.hnMajorNo = hnMajorNo;
	}
	public int getMajorNo() {
		return majorNo;
	}
	public void setMajorNo(int majorNo) {
		this.majorNo = majorNo;
	}
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	@Override
	public String toString() {
		return "HnMajorVO [hnMajorNo=" + hnMajorNo + ", majorNo=" + majorNo + ", hnNo=" + hnNo + "]";
	}

}
