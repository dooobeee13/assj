package com.hy.assj.freeboard.model;

import java.sql.Timestamp;

public class FreeBoardVO {
	
	private int fbNo;
	private int memNo;
	private String fbTitle;
	private String fbImage;
	private String fbContent;
	private int fbView;
	private int fbRecm;
	private Timestamp fbRegdate;
	public int getFbNo() {
		return fbNo;
	}
	public void setFbNo(int fbNo) {
		this.fbNo = fbNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getFbTitle() {
		return fbTitle;
	}
	public void setFbTitle(String fbTitle) {
		this.fbTitle = fbTitle;
	}
	public String getFbImage() {
		return fbImage;
	}
	public void setFbImage(String fbImage) {
		this.fbImage = fbImage;
	}
	public String getFbContent() {
		return fbContent;
	}
	public void setFbContent(String fbContent) {
		this.fbContent = fbContent;
	}
	public int getFbView() {
		return fbView;
	}
	public void setFbView(int fbView) {
		this.fbView = fbView;
	}
	public int getFbRecm() {
		return fbRecm;
	}
	public void setFbRecm(int fbRecm) {
		this.fbRecm = fbRecm;
	}
	public Timestamp getFbRegdate() {
		return fbRegdate;
	}
	public void setFbRegdate(Timestamp fbRegdate) {
		this.fbRegdate = fbRegdate;
	}
	@Override
	public String toString() {
		return "FreeBoardVO [fbNo=" + fbNo + ", memNo=" + memNo + ", fbTitle=" + fbTitle + ", fbImage=" + fbImage
				+ ", fbContent=" + fbContent + ", fbView=" + fbView + ", fbRecm=" + fbRecm + ", fbRegdate=" + fbRegdate
				+ "]";
	}
	
	

}
