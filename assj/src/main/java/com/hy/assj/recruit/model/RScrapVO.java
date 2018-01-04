package com.hy.assj.recruit.model;

public class RScrapVO {

	private int scrapNo;
	private int memNo;
	private int hnNo;
	
	public int getScrapNo() {
		return scrapNo;
	}
	public void setScrapNo(int scrapNo) {
		this.scrapNo = scrapNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	@Override
	public String toString() {
		return "RScrapVO [scrapNo=" + scrapNo + ", memNo=" + memNo + ", hnNo=" + hnNo + "]";
	}
	
}
