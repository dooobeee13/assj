package com.hy.assj.cmMember.model;

import java.sql.Date;


public class CResumeVO{

	private int resumeNo;
	private String name;
	private Date birth;
	private int age;
	private String gender;
	private String schoolName;
	private String major;
	private int careerNo;
	
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public int getCareerNo() {
		return careerNo;
	}
	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
	}
	@Override
	public String toString() {
		return "CResumeVO [resumeNo=" + resumeNo + ", name=" + name + ", birth=" + birth + ", age=" + age + ", gender="
				+ gender + ", schoolName=" + schoolName + ", major=" + major + ", careerNo=" + careerNo + "]";
	}
	
}
