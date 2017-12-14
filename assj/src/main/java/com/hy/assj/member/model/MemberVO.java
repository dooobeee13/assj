package com.hy.assj.member.model;

import java.sql.Timestamp;

public class MemberVO {
	private int mem_no;        
	private String mem_name;        
	private String mem_id;        
	private String mem_pwd;       
	private String mem_email;      
	private Timestamp mem_birth;     
    private String mem_phone;      
    private String mem_zipcode;     
    private String mem_addr;      
    private String mem_detailAddr; 
    private String mem_gender;     
    private Timestamp mem_regdate;   
    private Timestamp mem_lastdate;
    private String mem_sns_type;
    private String mem_sns_id;
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public Timestamp getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(Timestamp mem_birth) {
		this.mem_birth = mem_birth;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_zipcode() {
		return mem_zipcode;
	}
	public void setMem_zipcode(String mem_zipcode) {
		this.mem_zipcode = mem_zipcode;
	}
	public String getMem_addr() {
		return mem_addr;
	}
	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}
	public String getMem_detailAddr() {
		return mem_detailAddr;
	}
	public void setMem_detailAddr(String mem_detailAddr) {
		this.mem_detailAddr = mem_detailAddr;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public Timestamp getMem_regdate() {
		return mem_regdate;
	}
	public void setMem_regdate(Timestamp mem_regdate) {
		this.mem_regdate = mem_regdate;
	}
	public Timestamp getMem_lastdate() {
		return mem_lastdate;
	}
	public void setMem_lastdate(Timestamp mem_lastdate) {
		this.mem_lastdate = mem_lastdate;
	}
	public String getMem_sns_type() {
		return mem_sns_type;
	}
	public void setMem_sns_type(String mem_sns_type) {
		this.mem_sns_type = mem_sns_type;
	}
	public String getMem_sns_id() {
		return mem_sns_id;
	}
	public void setMem_sns_id(String mem_sns_id) {
		this.mem_sns_id = mem_sns_id;
	}
	
	@Override
	public String toString() {
		return "MemberVO [mem_no=" + mem_no + ", mem_name=" + mem_name + ", mem_id=" + mem_id + ", mem_pwd=" + mem_pwd
				+ ", mem_email=" + mem_email + ", mem_birth=" + mem_birth + ", mem_phone=" + mem_phone
				+ ", mem_zipcode=" + mem_zipcode + ", mem_addr=" + mem_addr + ", mem_detailAddr=" + mem_detailAddr
				+ ", mem_gender=" + mem_gender + ", mem_regdate=" + mem_regdate + ", mem_lastdate=" + mem_lastdate
				+ ", mem_sns_type=" + mem_sns_type + ", mem_sns_id=" + mem_sns_id + "]";
	}
    
    
	
}
