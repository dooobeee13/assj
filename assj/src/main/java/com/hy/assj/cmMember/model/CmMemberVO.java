package com.hy.assj.cmMember.model;

import java.util.Date;

public class CmMemberVO {
	private int cmNo;
	private String cmId;                
	private String cmPwd; 
	private String cmPwd2;   
	private String cmRegnum;            
	private String cmName;              
	private String cmRepre;             
	private String cmManager;           
	private String cmMgrTel;
	private String cmMgrTel1;
	private String cmMgrTel2;
	private String cmMgrTel3;
	private String cmAddr;             
	private String cmDetailAddr;        
	private String cmZipcode;           
	private String cmEmail;
	private String cmEmail1;
	private String cmEmail2;
	private String cmEmail3;
	private Date cmRegdate;             
	private String cmLogo;
	private int ccNo;                   
	private Integer csNo;
	private String cmHomepage;
	
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
	public String getCmPwd2() {
		return cmPwd2;
	}
	public void setCmPwd2(String cmPwd2) {
		this.cmPwd2 = cmPwd2;
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
	public String getCmManager() {
		return cmManager;
	}
	public void setCmManager(String cmManager) {
		this.cmManager = cmManager;
	}
	public String getCmMgrTel() {
		if((cmMgrTel2!=null&&!cmMgrTel2.isEmpty()) && (cmMgrTel3!=null&&!cmMgrTel3.isEmpty())) {
			cmMgrTel=cmMgrTel1+"-"+cmMgrTel2+"-"+cmMgrTel3;			
		}
		return cmMgrTel;
	}
	public void setCmMgrTel(String cmMgrTel) {
		this.cmMgrTel = cmMgrTel;
	}
	public String getCmMgrTel1() {
		return cmMgrTel1;
	}
	public void setCmMgrTel1(String cmMgrTel1) {
		this.cmMgrTel1 = cmMgrTel1;
	}
	public String getCmMgrTel2() {
		return cmMgrTel2;
	}
	public void setCmMgrTel2(String cmMgrTel2) {
		this.cmMgrTel2 = cmMgrTel2;
	}
	public String getCmMgrTel3() {
		return cmMgrTel3;
	}
	public void setCmMgrTel3(String cmMgrTel3) {
		this.cmMgrTel3 = cmMgrTel3;
	}
	public String getCmAddr() {
		return cmAddr;
	}
	public void setCmAddr(String cmAddr) {
		this.cmAddr = cmAddr;
	}
	public String getCmDetailAddr() {
		return cmDetailAddr;
	}
	public void setCmDetailAddr(String cmDetailAddr) {
		this.cmDetailAddr = cmDetailAddr;
	}
	public String getCmZipcode() {
		return cmZipcode;
	}
	public void setCmZipcode(String cmZipcode) {
		this.cmZipcode = cmZipcode;
	}
	public String getCmEmail() {
		if (cmEmail1 == null && cmEmail2 == null && cmEmail3 == null) {
			return cmEmail;
		}
		
		if(cmEmail2.equals("etc")) {
			cmEmail=cmEmail1+"@"+cmEmail3;
		}else {
			cmEmail=cmEmail1+"@"+cmEmail2;
		}
		return cmEmail;
	}
	public void setCmEmail(String cmEmail) {
		this.cmEmail = cmEmail;
	}
	public String getCmEmail1() {
		return cmEmail1;
	}
	public void setCmEmail1(String cmEmail1) {
		this.cmEmail1 = cmEmail1;
	}
	public String getCmEmail2() {
		return cmEmail2;
	}
	public void setCmEmail2(String cmEmail2) {
		this.cmEmail2 = cmEmail2;
	}
	public String getCmEmail3() {
		return cmEmail3;
	}
	public void setCmEmail3(String cmEmail3) {
		this.cmEmail3 = cmEmail3;
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
	public int getCcNo() {
		return ccNo;
	}
	public void setCcNo(int ccNo) {
		this.ccNo = ccNo;
	}
	public Integer getCsNo() {
		return csNo;
	}
	public void setCsNo(Integer csNo) {
		this.csNo = csNo;
	}
	
	public String getCmHomepage() {
		return cmHomepage;
	}
	public void setCmHomepage(String cmHomepage) {
		this.cmHomepage = cmHomepage;
	}

	@Override
	public String toString() {
		return "CmMemberVO [cmNo=" + cmNo + ", cmId=" + cmId + ", cmPwd=" + cmPwd + ", cmPwd2=" + cmPwd2 + ", cmRegnum="
				+ cmRegnum + ", cmName=" + cmName + ", cmRepre=" + cmRepre + ", cmManager=" + cmManager + ", cmMgrTel="
				+ cmMgrTel + ", cmMgrTel1=" + cmMgrTel1 + ", cmMgrTel2=" + cmMgrTel2 + ", cmMgrTel3=" + cmMgrTel3
				+ ", cmAddr=" + cmAddr + ", cmDetailAddr=" + cmDetailAddr + ", cmZipcode=" + cmZipcode + ", cmEmail="
				+ cmEmail + ", cmEmail1=" + cmEmail1 + ", cmEmail2=" + cmEmail2 + ", cmEmail3=" + cmEmail3
				+ ", cmRegdate=" + cmRegdate + ", cmLogo=" + cmLogo + ", ccNo=" + ccNo + ", csNo=" + csNo
				+ ", cmHomepage=" + cmHomepage + "]";
	}
	
}
