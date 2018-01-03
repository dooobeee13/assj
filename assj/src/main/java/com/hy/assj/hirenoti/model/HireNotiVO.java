package com.hy.assj.hirenoti.model;

import java.sql.Timestamp;
import java.util.List;

public class HireNotiVO {
	private int hnNo; // 채용공고번호(PK)
	private String hnNotiTitle; // 공고제목
	private int cmNo; // 기업등록번호(FK)
	private int hnSalStart; // 최소급여
	private int hnSalEnd; //  최대급여
	private int hnViews; // 조회수
	private String hnStart; // 공고시작일
	private String hnDeadline; // 공고마감일
	private String hnHows; // 접수방법
	private String hnTask; // 주요업무
	private String hnEligibility; //자격요건
 	private String hnPreference; // 우대사항
	private String hnStep; // 채용절차
	private String hnBenefits; // 복리후생
	private String hnDocument; // 제출서류
	private String hnAddr; // 근무지주소
	private String hnDetailAddr; // 근무지(상세주소)
	private int hnLat; // 위도
	private int hnLng; // 경도
	private String hnStatus; // 공고상태
	private String hnGender; // 성별
	private int hnRecruitNum; // 모집인원
	private int hnExpyearMin; //최소경력
	private int hnExpyearMax; // 최대경력
	
	private int eduNo; // 학력코드(FK)
	private int careerNo; // 경력코드(FK)
	
	
	private int areaNo;
	private List<Integer> occuList;
	private List<Integer> empTypeList;
	private List<Integer> rankList;
	private List<Integer> positionList;
	private List<Integer> majorList;
	private List<Integer> sectorList;
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	public String getHnNotiTitle() {
		return hnNotiTitle;
	}
	public void setHnNotiTitle(String hnNotiTitle) {
		this.hnNotiTitle = hnNotiTitle;
	}
	public int getCmNo() {
		return cmNo;
	}
	public void setCmNo(int cmNo) {
		this.cmNo = cmNo;
	}
	public int getHnSalStart() {
		return hnSalStart;
	}
	public void setHnSalStart(int hnSalStart) {
		this.hnSalStart = hnSalStart;
	}
	public int getHnSalEnd() {
		return hnSalEnd;
	}
	public void setHnSalEnd(int hnSalEnd) {
		this.hnSalEnd = hnSalEnd;
	}
	public int getHnViews() {
		return hnViews;
	}
	public void setHnViews(int hnViews) {
		this.hnViews = hnViews;
	}
	public String getHnStart() {
		return hnStart;
	}
	public void setHnStart(String hnStart) {
		this.hnStart = hnStart;
	}
	public String getHnDeadline() {
		return hnDeadline;
	}
	public void setHnDeadline(String hnDeadline) {
		this.hnDeadline = hnDeadline;
	}
	public String getHnHows() {
		return hnHows;
	}
	public void setHnHows(String hnHows) {
		this.hnHows = hnHows;
	}
	public String getHnTask() {
		return hnTask;
	}
	public void setHnTask(String hnTask) {
		this.hnTask = hnTask;
	}
	public String getHnEligibility() {
		return hnEligibility;
	}
	public void setHnEligibility(String hnEligibility) {
		this.hnEligibility = hnEligibility;
	}
	public String getHnPreference() {
		return hnPreference;
	}
	public void setHnPreference(String hnPreference) {
		this.hnPreference = hnPreference;
	}
	public String getHnStep() {
		return hnStep;
	}
	public void setHnStep(String hnStep) {
		this.hnStep = hnStep;
	}
	public String getHnBenefits() {
		return hnBenefits;
	}
	public void setHnBenefits(String hnBenefits) {
		this.hnBenefits = hnBenefits;
	}
	public String getHnDocument() {
		return hnDocument;
	}
	public void setHnDocument(String hnDocument) {
		this.hnDocument = hnDocument;
	}
	public String getHnAddr() {
		return hnAddr;
	}
	public void setHnAddr(String hnAddr) {
		this.hnAddr = hnAddr;
	}
	public String getHnDetailAddr() {
		return hnDetailAddr;
	}
	public void setHnDetailAddr(String hnDetailAddr) {
		this.hnDetailAddr = hnDetailAddr;
	}
	public int getHnLat() {
		return hnLat;
	}
	public void setHnLat(int hnLat) {
		this.hnLat = hnLat;
	}
	public int getHnLng() {
		return hnLng;
	}
	public void setHnLng(int hnLng) {
		this.hnLng = hnLng;
	}
	public String getHnStatus() {
		return hnStatus;
	}
	public void setHnStatus(String hnStatus) {
		this.hnStatus = hnStatus;
	}
	public String getHnGender() {
		return hnGender;
	}
	public void setHnGender(String hnGender) {
		this.hnGender = hnGender;
	}
	public int getHnRecruitNum() {
		return hnRecruitNum;
	}
	public void setHnRecruitNum(int hnRecruitNum) {
		this.hnRecruitNum = hnRecruitNum;
	}
	public int getHnExpyearMin() {
		return hnExpyearMin;
	}
	public void setHnExpyearMin(int hnExpyearMin) {
		this.hnExpyearMin = hnExpyearMin;
	}
	public int getHnExpyearMax() {
		return hnExpyearMax;
	}
	public void setHnExpyearMax(int hnExpyearMax) {
		this.hnExpyearMax = hnExpyearMax;
	}
	public int getEduNo() {
		return eduNo;
	}
	public void setEduNo(int eduNo) {
		this.eduNo = eduNo;
	}
	public int getCareerNo() {
		return careerNo;
	}
	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
	}
	public int getAreaNo() {
		return areaNo;
	}
	public void setAreaNo(int areaNo) {
		this.areaNo = areaNo;
	}
	public List<Integer> getOccuList() {
		return occuList;
	}
	public void setOccuList(List<Integer> occuList) {
		this.occuList = occuList;
	}
	public List<Integer> getEmpTypeList() {
		return empTypeList;
	}
	public void setEmpTypeList(List<Integer> empTypeList) {
		this.empTypeList = empTypeList;
	}
	public List<Integer> getRankList() {
		return rankList;
	}
	public void setRankList(List<Integer> rankList) {
		this.rankList = rankList;
	}
	public List<Integer> getPositionList() {
		return positionList;
	}
	public void setPositionList(List<Integer> positionList) {
		this.positionList = positionList;
	}
	public List<Integer> getMajorList() {
		return majorList;
	}
	public void setMajorList(List<Integer> majorList) {
		this.majorList = majorList;
	}
	public List<Integer> getSectorList() {
		return sectorList;
	}
	public void setSectorList(List<Integer> sectorList) {
		this.sectorList = sectorList;
	}
	@Override
	public String toString() {
		return "HireNotiVO [hnNo=" + hnNo + ", hnNotiTitle=" + hnNotiTitle + ", cmNo=" + cmNo + ", hnSalStart="
				+ hnSalStart + ", hnSalEnd=" + hnSalEnd + ", hnViews=" + hnViews + ", hnStart=" + hnStart
				+ ", hnDeadline=" + hnDeadline + ", hnHows=" + hnHows + ", hnTask=" + hnTask + ", hnEligibility="
				+ hnEligibility + ", hnPreference=" + hnPreference + ", hnStep=" + hnStep + ", hnBenefits=" + hnBenefits
				+ ", hnDocument=" + hnDocument + ", hnAddr=" + hnAddr + ", hnDetailAddr=" + hnDetailAddr + ", hnLat="
				+ hnLat + ", hnLng=" + hnLng + ", hnStatus=" + hnStatus + ", hnGender=" + hnGender + ", hnRecruitNum="
				+ hnRecruitNum + ", hnExpyearMin=" + hnExpyearMin + ", hnExpyearMax=" + hnExpyearMax + ", eduNo="
				+ eduNo + ", careerNo=" + careerNo + ", areaNo=" + areaNo + ", occuList=" + occuList + ", empTypeList="
				+ empTypeList + ", rankList=" + rankList + ", positionList=" + positionList + ", majorList=" + majorList
				+ ", sectorList=" + sectorList + "]";
	}
	
}
