package com.hy.assj.reboard.model;

import java.util.Date;

public class ReboardVO {
	private int no;
    private String name;
    private String pwd;
    private String title;
    private Date regdate;
    private int readCount;
    private String content;
    private int groupNo;      	
	private int step;	  	
	private int sortNo;
	private char delFlag;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getSortNo() {
		return sortNo;
	}
	public void setSortNo(int sortNo) {
		this.sortNo = sortNo;
	}
	public char getDelFlag() {
		return delFlag;
	}
	public void setDelFlag(char delFlag) {
		this.delFlag = delFlag;
	}
	
	
	@Override
	public String toString() {
		return "ReboardVO [no=" + no + ", name=" + name + ", pwd=" + pwd + ", title=" + title + ", regdate=" + regdate
				+ ", readCount=" + readCount + ", content=" + content + ", groupNo=" + groupNo + ", step=" + step
				+ ", sortNo=" + sortNo + ", delFlag=" + delFlag + "]";
	}
	
	
	
	
	
}
