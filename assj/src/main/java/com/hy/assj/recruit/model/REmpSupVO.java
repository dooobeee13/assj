package com.hy.assj.recruit.model;

import java.sql.Date;

public class REmpSupVO {

	private int esNo;
	private int memNo;
	private int hnNo;
	private int resumeNo;
	private Date esRegdate;
	private String esConfirm;
	private String esStatus;
	private String esDelflag;
	
	public int getEsNo() {
		return esNo;
	}
	public void setEsNo(int esNo) {
		this.esNo = esNo;
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
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public Date getEsRegdate() {
		return esRegdate;
	}
	public void setEsRegdate(Date esRegdate) {
		this.esRegdate = esRegdate;
	}
	public String getEsConfirm() {
		return esConfirm;
	}
	public void setEsConfirm(String esConfirm) {
		this.esConfirm = esConfirm;
	}
	public String getEsStatus() {
		return esStatus;
	}
	public void setEsStatus(String esStatus) {
		this.esStatus = esStatus;
	}
	public String getEsDelflag() {
		return esDelflag;
	}
	public void setEsDelflag(String esDelflag) {
		this.esDelflag = esDelflag;
	}
	@Override
	public String toString() {
		return "REmpSup [esNo=" + esNo + ", memNo=" + memNo + ", hnNo=" + hnNo + ", resumeNo=" + resumeNo
				+ ", esRegdate=" + esRegdate + ", esConfirm=" + esConfirm + ", esStatus=" + esStatus + ", esDelflag="
				+ esDelflag + "]";
	}
	
}
