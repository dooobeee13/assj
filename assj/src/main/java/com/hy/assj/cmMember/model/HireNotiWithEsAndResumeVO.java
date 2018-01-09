package com.hy.assj.cmMember.model;

import java.sql.Date;
import java.util.List;

public class HireNotiWithEsAndResumeVO {
	
	private int hnNo;
	private String hnNotititle;
	private Date hnStart;
	private Date hnDeadline;
	private String deadlineStatus;
	
	private List<CEsWithResumeVO> cEsWithResumeList;

	public int getHnNo() {
		return hnNo;
	}

	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}

	public String getHnNotititle() {
		return hnNotititle;
	}

	public void setHnNotititle(String hnNotititle) {
		this.hnNotititle = hnNotititle;
	}

	public Date getHnStart() {
		return hnStart;
	}

	public void setHnStart(Date hnStart) {
		this.hnStart = hnStart;
	}

	public Date getHnDeadline() {
		return hnDeadline;
	}

	public void setHnDeadline(Date hnDeadline) {
		this.hnDeadline = hnDeadline;
	}

	public String getDeadlineStatus() {
		return deadlineStatus;
	}

	public void setDeadlineStatus(String deadlineStatus) {
		this.deadlineStatus = deadlineStatus;
	}

	public List<CEsWithResumeVO> getcEsWithResumeList() {
		return cEsWithResumeList;
	}

	public void setcEsWithResumeList(List<CEsWithResumeVO> cEsWithResumeList) {
		this.cEsWithResumeList = cEsWithResumeList;
	}

	@Override
	public String toString() {
		return "HireNotiWithEsAndResumeVO [hnNo=" + hnNo + ", hnNotititle=" + hnNotititle + ", hnStart=" + hnStart
				+ ", hnDeadline=" + hnDeadline + ", deadlineStatus=" + deadlineStatus + ", cEsWithResumeList="
				+ cEsWithResumeList + "]";
	}

}
