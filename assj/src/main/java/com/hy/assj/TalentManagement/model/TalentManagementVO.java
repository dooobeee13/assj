package com.hy.assj.TalentManagement.model;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

public class TalentManagementVO {

	private List<String> UniversityType; // 몇년제 졸업인지
	private List<String> EduColDetail; //자주 검색하는 대학
	private List<String> position; //직책 부분
	private List<String> rank; //직급 부분
	private List<String> etName; //empType근무형태 부분
	private List<String> areaTopName; // 제일 상위 지역 검색
	private List<String> resumeGender; //성별
	private List<String> careerCheckBox; //경력이 있는지 없는지 체크하는 곳 업데이트 필요
	private List<String> occuName; //HopeOccu
	private List<String> areaName; //area
	private List<String> secName; //희망 업종
	private List<String> major;//전공
	private List<String> hopeSalsDesi;
	private String salStart;
	private String salEnd;
	private String oldStart;
	private String oldEnd;
	
	
	public String getOldStart() {
		return oldStart;
	}
	public void setOldStart(String oldStart) {
		this.oldStart = oldStart;
	}
	public String getOldEnd() {
		return oldEnd;
	}
	public void setOldEnd(String oldEnd) {
		this.oldEnd = oldEnd;
	}
	public List<String> getHopeSalsDesi() {
		return hopeSalsDesi;
	}
	public void setHopeSalsDesi(List<String> hopeSalsDesi) {
		this.hopeSalsDesi = hopeSalsDesi;
	}
	public String getSalStart() {
		return salStart;
	}
	public void setSalStart(String salStart) {
		this.salStart = salStart;
	}
	public String getSalEnd() {
		return salEnd;
	}
	public void setSalEnd(String salEnd) {
		this.salEnd = salEnd;
	}
	public List<String> getUniversityType() {
		return UniversityType;
	}
	public void setUniversityType(List<String> universityType) {
		UniversityType = universityType;
	}
	public List<String> getEduColDetail() {
		return EduColDetail;
	}
	public void setEduColDetail(List<String> eduColDetail) {
		EduColDetail = eduColDetail;
	}
	public List<String> getPosition() {
		return position;
	}
	public void setPosition(List<String> position) {
		this.position = position;
	}
	public List<String> getRank() {
		return rank;
	}
	public void setRank(List<String> rank) {
		this.rank = rank;
	}
	public List<String> getEtName() {
		return etName;
	}
	public void setEtName(List<String> etName) {
		this.etName = etName;
	}
	public List<String> getAreaTopName() {
		return areaTopName;
	}
	public void setAreaTopName(List<String> areaTopName) {
		this.areaTopName = areaTopName;
	}
	public List<String> getResumeGender() {
		return resumeGender;
	}
	public void setResumeGender(List<String> resumeGender) {
		this.resumeGender = resumeGender;
	}
	public List<String> getCareerCheckBox() {
		return careerCheckBox;
	}
	public void setCareerCheckBox(List<String> careerCheckBox) {
		this.careerCheckBox = careerCheckBox;
	}
	public List<String> getOccuName() {
		return occuName;
	}
	public void setOccuName(List<String> occuName) {
		this.occuName = occuName;
	}
	public List<String> getAreaName() {
		return areaName;
	}
	public void setAreaName(List<String> areaName) {
		this.areaName = areaName;
	}
	public List<String> getSecName() {
		return secName;
	}
	public void setSecName(List<String> secName) {
		this.secName = secName;
	}
	public List<String> getMajor() {
		return major;
	}
	public void setMajor(List<String> major) {
		this.major = major;
	}
	
	
	
}
