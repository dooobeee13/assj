package com.hy.assj.TalentManagement.model;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

public class TalentManagementVO {

	private List<String> UniversityType; // 몇년제 졸업인지
	private List<String> EduColDetail; //자주 검색하는 대학
	private List<String> position; //직책 부분
	private List<String> rank; //직급 부분
	private List<String> ET_NAME; //empType근무형태 부분
	private List<String> AREA_TOP_NAME; // 제일 상위 지역 검색
	private List<String> RESUME_GENDER; //성별
	private List<String> CareerCheckBox; //경력이 있는지 없는지 체크하는 곳 업데이트 필요
	private List<String> OCCU_NAME; //HopeOccu
	private List<String> AREA_NAME; //area
	private List<String> SEC_NAME; //희망 업종
	
	
	public TalentManagementVO() {
		super();
		// TODO Auto-generated constructor stub
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
	public List<String> getET_NAME() {
		return ET_NAME;
	}
	public void setET_NAME(List<String> eT_NAME) {
		ET_NAME = eT_NAME;
	}
	public List<String> getAREA_TOP_NAME() {
		return AREA_TOP_NAME;
	}
	public void setAREA_TOP_NAME(List<String> aREA_TOP_NAME) {
		AREA_TOP_NAME = aREA_TOP_NAME;
	}
	public List<String> getRESUME_GENDER() {
		return RESUME_GENDER;
	}
	public void setRESUME_GENDER(List<String> rESUME_GENDER) {
		RESUME_GENDER = rESUME_GENDER;
	}
	public List<String> getCareerCheckBox() {
		return CareerCheckBox;
	}
	public void setCareerCheckBox(List<String> careerCheckBox) {
		CareerCheckBox = careerCheckBox;
	}
	public List<String> getOCCU_NAME() {
		return OCCU_NAME;
	}
	public void setOCCU_NAME(List<String> oCCU_NAME) {
		OCCU_NAME = oCCU_NAME;
	}
	public List<String> getAREA_NAME() {
		return AREA_NAME;
	}
	public void setAREA_NAME(List<String> aREA_NAME) {
		AREA_NAME = aREA_NAME;
	}
	public List<String> getSEC_NAME() {
		return SEC_NAME;
	}
	public void setSEC_NAME(List<String> sEC_NAME) {
		SEC_NAME = sEC_NAME;
	}
	
	
}
