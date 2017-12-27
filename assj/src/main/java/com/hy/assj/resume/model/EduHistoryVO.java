package com.hy.assj.resume.model;

import java.util.List;

public class EduHistoryVO {
	
	private int ehNo;
	private int resumeNo;
	private String ehAdmission; 
	private String ehCompletion;
	private String ehConfirm;
	private String ehInstitution;
	private String ehCsname;
	private int areaNo;
	
	private List<EduHistoryVO> ehVOList;
	
	public List<EduHistoryVO> getEhVOList() {
		return ehVOList;
	}
	public void setEhVOList(List<EduHistoryVO> ehVOList) {
		this.ehVOList = ehVOList;
	}
	public int getEhNo() {
		return ehNo;
	}
	public void setEhNo(int ehNo) {
		this.ehNo = ehNo;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getEhAdmission() {
		return ehAdmission;
	}
	public void setEhAdmission(String ehAdmission) {
		this.ehAdmission = ehAdmission;
	}
	public String getEhCompletion() {
		return ehCompletion;
	}
	public void setEhCompletion(String ehCompletion) {
		this.ehCompletion = ehCompletion;
	}
	public String getEhConfirm() {
		return ehConfirm;
	}
	public void setEhConfirm(String ehConfirm) {
		this.ehConfirm = ehConfirm;
	}
	public String getEhInstitution() {
		return ehInstitution;
	}
	public void setEhInstitution(String ehInstitution) {
		this.ehInstitution = ehInstitution;
	}
	public String getEhCsname() {
		return ehCsname;
	}
	public void setEhCsname(String ehCsname) {
		this.ehCsname = ehCsname;
	}
	public int getAreaNo() {
		return areaNo;
	}
	public void setAreaNo(int areaNo) {
		this.areaNo = areaNo;
	}
	@Override
	public String toString() {
		return "EduHistoryVO [ehNo=" + ehNo + ", resumeNo=" + resumeNo + ", ehAdmission=" + ehAdmission
				+ ", ehCompletion=" + ehCompletion + ", ehConfirm=" + ehConfirm + ", ehInstitution=" + ehInstitution
				+ ", ehCsname=" + ehCsname + ", areaNo=" + areaNo + ", ehVOList=" + ehVOList + "]";
	}
	
	
	

}
