package com.hy.assj.recruit.model;

import java.sql.Date;
import java.util.List;

public class RMemberVO {

	private int memNo;
	private String memName;
	private String memId;
	private String memEmail;
	private Date memBirth;
	private String memPhone;
	private String memZipcode;
	private String memAddr;
	private String memDetailAddr;
	private String memGender;
	private Date memRegdate;
	private Date memLastdate;
	private String memSnsType;
	private String memSnsId;
	private String memPhoto;
	
	private List<REmpSupVO> empSupList;
	private List<RScrapVO> scrapList;
	
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public Date getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(Date memBirth) {
		this.memBirth = memBirth;
	}
	public String getMemPhone() {
		return memPhone;
	}
	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}
	public String getMemZipcode() {
		return memZipcode;
	}
	public void setMemZipcode(String memZipcode) {
		this.memZipcode = memZipcode;
	}
	public String getMemAddr() {
		return memAddr;
	}
	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}
	public String getMemDetailAddr() {
		return memDetailAddr;
	}
	public void setMemDetailAddr(String memDetailAddr) {
		this.memDetailAddr = memDetailAddr;
	}
	public String getMemGender() {
		return memGender;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	public Date getMemRegdate() {
		return memRegdate;
	}
	public void setMemRegdate(Date memRegdate) {
		this.memRegdate = memRegdate;
	}
	public Date getMemLastdate() {
		return memLastdate;
	}
	public void setMemLastdate(Date memLastdate) {
		this.memLastdate = memLastdate;
	}
	public String getMemSnsType() {
		return memSnsType;
	}
	public void setMemSnsType(String memSnsType) {
		this.memSnsType = memSnsType;
	}
	public String getMemSnsId() {
		return memSnsId;
	}
	public void setMemSnsId(String memSnsId) {
		this.memSnsId = memSnsId;
	}
	public String getMemPhoto() {
		return memPhoto;
	}
	public void setMemPhoto(String memPhoto) {
		this.memPhoto = memPhoto;
	}
	public List<REmpSupVO> getEmpSupList() {
		return empSupList;
	}
	public void setEmpSupList(List<REmpSupVO> empSupList) {
		this.empSupList = empSupList;
	}
	public List<RScrapVO> getScrapList() {
		return scrapList;
	}
	public void setScrapList(List<RScrapVO> scrapList) {
		this.scrapList = scrapList;
	}
	@Override
	public String toString() {
		return "RMemberVO [memNo=" + memNo + ", memName=" + memName + ", memId=" + memId + ", memEmail=" + memEmail
				+ ", memBirth=" + memBirth + ", memPhone=" + memPhone + ", memZipcode=" + memZipcode + ", memAddr="
				+ memAddr + ", memDetailAddr=" + memDetailAddr + ", memGender=" + memGender + ", memRegdate="
				+ memRegdate + ", memLastdate=" + memLastdate + ", memSnsType=" + memSnsType + ", memSnsId=" + memSnsId
				+ ", memPhoto=" + memPhoto + ", empSupList=" + empSupList + ", scrapList=" + scrapList + "]";
	}
	
}
