package com.hy.assj.recruit.model;

import java.sql.Date;

public class RCompMemberVO {
	
	private int cmNo;
    private String cmId;
    private String cmPwd;
    private String cmRegnum;
    private String cmName;
    private String cmRepre;
    private String cmAddr;
    private String cmDetailaddr;
    private String cmZipcode;
    private String cmManager;
    private String cmMgrTel;
    private String cmEmail;
    private Date cmRegdate;
    private String cmLogo;
    private String cmHomepage;
    private int ccNo;
    private int csNo;
    
	public int getCmNo() {
		return cmNo;
	}
	public void setCmNo(int cmNo) {
		this.cmNo = cmNo;
	}
	public String getCmId() {
		return cmId;
	}
	public void setCmId(String cmId) {
		this.cmId = cmId;
	}
	public String getCmPwd() {
		return cmPwd;
	}
	public void setCmPwd(String cmPwd) {
		this.cmPwd = cmPwd;
	}
	public String getCmRegnum() {
		return cmRegnum;
	}
	public void setCmRegnum(String cmRegnum) {
		this.cmRegnum = cmRegnum;
	}
	public String getCmName() {
		return cmName;
	}
	public void setCmName(String cmName) {
		this.cmName = cmName;
	}
	public String getCmRepre() {
		return cmRepre;
	}
	public void setCmRepre(String cmRepre) {
		this.cmRepre = cmRepre;
	}
	public String getCmAddr() {
		return cmAddr;
	}
	public void setCmAddr(String cmAddr) {
		this.cmAddr = cmAddr;
	}
	public String getCmDetailaddr() {
		return cmDetailaddr;
	}
	public void setCmDetailaddr(String cmDetailaddr) {
		this.cmDetailaddr = cmDetailaddr;
	}
	public String getCmZipcode() {
		return cmZipcode;
	}
	public void setCmZipcode(String cmZipcode) {
		this.cmZipcode = cmZipcode;
	}
	public String getCmManager() {
		return cmManager;
	}
	public void setCmManager(String cmManager) {
		this.cmManager = cmManager;
	}
	public String getCmMgrTel() {
		return cmMgrTel;
	}
	public void setCmMgrTel(String cmMgrTel) {
		this.cmMgrTel = cmMgrTel;
	}
	public String getCmEmail() {
		return cmEmail;
	}
	public void setCmEmail(String cmEmail) {
		this.cmEmail = cmEmail;
	}
	public Date getCmRegdate() {
		return cmRegdate;
	}
	public void setCmRegdate(Date cmRegdate) {
		this.cmRegdate = cmRegdate;
	}
	public String getCmLogo() {
		return cmLogo;
	}
	public void setCmLogo(String cmLogo) {
		this.cmLogo = cmLogo;
	}
	public String getCmHomepage() {
		return cmHomepage;
	}
	public void setCmHomepage(String cmHomepage) {
		this.cmHomepage = cmHomepage;
	}
	public int getCcNo() {
		return ccNo;
	}
	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
	}
	public int getCsNo() {
		return csNo;
	}
	public void setCsNo(int csNo) {
		this.csNo = csNo;
	}
	@Override
	public String toString() {
		return "RCompMemberVO [cmNo=" + cmNo + ", cmId=" + cmId + ", cmPwd=" + cmPwd + ", cmRegnum=" + cmRegnum
				+ ", cmName=" + cmName + ", cmRepre=" + cmRepre + ", cmAddr=" + cmAddr + ", cmDetailaddr="
				+ cmDetailaddr + ", cmZipcode=" + cmZipcode + ", cmManager=" + cmManager + ", cmMgrTel=" + cmMgrTel
				+ ", cmEmail=" + cmEmail + ", cmRegdate=" + cmRegdate + ", cmLogo=" + cmLogo + ", cmHomepage="
				+ cmHomepage + ", ccNo=" + ccNo + ", csNo=" + csNo + "]";
	}
	
}
