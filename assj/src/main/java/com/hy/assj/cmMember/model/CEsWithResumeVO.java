package com.hy.assj.cmMember.model;

import java.sql.Date;


public class CEsWithResumeVO{

	private Integer esNo;
	private String status;
	private Integer resumeNo;
	private String name;
	private Date birth;
	private Integer age;
	private String gender;
	private Integer salEnd;
	private String schoolName;
	private String major;
	private Integer eduNo;
	private Integer careerNo;
	private Integer careerYear;
	public Integer getEsNo() {
		return esNo;
	}
	public void setEsNo(Integer esNo) {
		this.esNo = esNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(Integer resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Integer getSalEnd() {
		return salEnd;
	}
	public void setSalEnd(Integer salEnd) {
		this.salEnd = salEnd;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public Integer getEduNo() {
		return eduNo;
	}
	public void setEduNo(Integer eduNo) {
		this.eduNo = eduNo;
	}
	public Integer getCareerNo() {
		return careerNo;
	}
	public void setCareerNo(Integer careerNo) {
		this.careerNo = careerNo;
	}
	public Integer getCareerYear() {
		return careerYear;
	}
	public void setCareerYear(Integer careerYear) {
		this.careerYear = careerYear;
	}
	@Override
	public String toString() {
		return "CEsWithResumeVO [esNo=" + esNo + ", status=" + status + ", resumeNo=" + resumeNo + ", name=" + name
				+ ", birth=" + birth + ", age=" + age + ", gender=" + gender + ", salEnd=" + salEnd + ", schoolName="
				+ schoolName + ", major=" + major + ", eduNo=" + eduNo + ", careerNo=" + careerNo + ", careerYear="
				+ careerYear + "]";
	}
	
}
