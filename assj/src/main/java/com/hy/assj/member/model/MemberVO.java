package com.hy.assj.member.model;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberVO {
	private int memNo;        
	private String memName;        
	private String memId;        
	private String memPwd;
	private String memPwd2;
	
	private String memEmail;      
	private String memEmail1;      
	private String memEmail2;      
	private String memEmail3; 
	
	private Date memBirth;
	private String memBirth1;
	private String memBirth2;
	private String memBirth3;
	
    private String memPhone;
    private String memPhone1;
    private String memPhone2;
    private String memPhone3;
    
    private String memZipcode;     
    private String memAddr;      
    private String memDetailAddr; 
    
    private String memGender;     
    private Date memRegdate;   
    private Date memLastdate;
    private String memSnsType;
    private String memSnsId;
    
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
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemPwd2() {
		return memPwd2;
	}
	public void setMemPwd2(String memPwd2) {
		this.memPwd2 = memPwd2;
	}
	public String getMemEmail() {
		if(memEmail2.equals("etc")) {
			memEmail=memEmail1+"@"+memEmail3;
		}else {
			memEmail=memEmail1+"@"+memEmail2;
		}
		
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemEmail1() {
		return memEmail1;
	}
	public void setMemEmail1(String memEmail1) {
		this.memEmail1 = memEmail1;
	}
	public String getMemEmail2() {
		return memEmail2;
	}
	public void setMemEmail2(String memEmail2) {
		this.memEmail2 = memEmail2;
	}
	public String getMemEmail3() {
		return memEmail3;
	}
	public void setMemEmail3(String memEmail3) {
		this.memEmail3 = memEmail3;
	}
	public Date getMemBirth() {
		if(memBirth1!=null && memBirth2!=null && memBirth3!=null) {
			String birth=memBirth1+memBirth2+memBirth3;
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");

			try {
				memBirth = sdf.parse(birth);
			} catch (ParseException e) {
				e.printStackTrace();
			} 
		}
		return memBirth;
	}
	public void setMemBirth(Date memBirth) {
		
		this.memBirth = memBirth;
	}
	public String getMemBirth1() {
		return memBirth1;
	}
	public void setMemBirth1(String memBirth1) {
		this.memBirth1 = memBirth1;
	}
	public String getMemBirth2() {
		return memBirth2;
	}
	public void setMemBirth2(String memBirth2) {
		this.memBirth2 = memBirth2;
	}
	public String getMemBirth3() {
		return memBirth3;
	}
	public void setMemBirth3(String memBirth3) {
		this.memBirth3 = memBirth3;
	}
	public String getMemPhone() {
		if((memPhone2!=null&&!memPhone2.isEmpty()) && (memPhone3!=null&&!memPhone3.isEmpty())) {
			memPhone=memPhone1+"-"+memPhone2+"-"+memPhone3;			
		}
		return memPhone;
	}
	public void setMemPhone(String memPhone) {
		
		this.memPhone = memPhone;
	}
	public String getMemPhone1() {
		return memPhone1;
	}
	public void setMemPhone1(String memPhone1) {
		this.memPhone1 = memPhone1;
	}
	public String getMemPhone2() {
		return memPhone2;
	}
	public void setMemPhone2(String memPhone2) {
		this.memPhone2 = memPhone2;
	}
	public String getMemPhone3() {
		return memPhone3;
	}
	public void setMemPhone3(String memPhone3) {
		this.memPhone3 = memPhone3;
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
	
	@Override
	public String toString() {
		return "MemberVO [memNo=" + memNo + ", memName=" + memName + ", memId=" + memId + ", memPwd=" + memPwd
				+ ", memPwd2=" + memPwd2 + ", memEmail=" + memEmail + ", memEmail1=" + memEmail1 + ", memEmail2="
				+ memEmail2 + ", memEmail3=" + memEmail3 + ", memBirth=" + memBirth + ", memBirth1=" + memBirth1
				+ ", memBirth2=" + memBirth2 + ", memBirth3=" + memBirth3 + ", memPhone=" + memPhone + ", memPhone1="
				+ memPhone1 + ", memPhone2=" + memPhone2 + ", memPhone3=" + memPhone3 + ", memZipcode=" + memZipcode
				+ ", memAddr=" + memAddr + ", memDetailAddr=" + memDetailAddr + ", memGender=" + memGender
				+ ", memRegdate=" + memRegdate + ", memLastdate=" + memLastdate + ", memSnsType=" + memSnsType
				+ ", memSnsId=" + memSnsId + "]";
	}

	
	
	
}
