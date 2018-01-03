package com.hy.assj.notice.model;

import java.util.Date;
import java.util.List;

public class NoticeVO {
	private int no;               
	private int adminNo;                
	private int noticetitleNo;   
	private String title;            
	private Date regdate;         
	private int readcount;
	private String contents;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public int getNoticetitleNo() {
		return noticetitleNo;
	}
	public void setNoticetitleNo(int noticetitleNo) {
		this.noticetitleNo = noticetitleNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [no=" + no + ", adminNo=" + adminNo + ", noticetitleNo=" + noticetitleNo + ", title=" + title
				+ ", regdate=" + regdate + ", readcount=" + readcount + ", contents=" + contents + "]";
	}

}
