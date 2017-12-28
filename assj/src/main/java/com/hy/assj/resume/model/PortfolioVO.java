package com.hy.assj.resume.model;

public class PortfolioVO {
	
	private int portNo;
	private int resumeNo;
	private String portIntro;
	private String portFilename;
	private String portOrifname;
	private long portFilesize;
	
	public int getPortNo() {
		return portNo;
	}
	public void setPortNo(int portNo) {
		this.portNo = portNo;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getPortIntro() {
		return portIntro;
	}
	public void setPortIntro(String portIntro) {
		this.portIntro = portIntro;
	}
	public String getPortFilename() {
		return portFilename;
	}
	public void setPortFilename(String portFilename) {
		this.portFilename = portFilename;
	}
	public String getPortOrifname() {
		return portOrifname;
	}
	public void setPortOrifname(String portOrifname) {
		this.portOrifname = portOrifname;
	}
	public long getPortFilesize() {
		return portFilesize;
	}
	public void setPortFilesize(long fileSize) {
		this.portFilesize = fileSize;
	}
	@Override
	public String toString() {
		return "PortfolioVO [portNo=" + portNo + ", resumeNo=" + resumeNo + ", portIntro=" + portIntro
				+ ", portFilename=" + portFilename + ", portOrifname=" + portOrifname + ", portFilesize=" + portFilesize
				+ "]";
	}
	
	

}
