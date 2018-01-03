package com.hy.assj.hirenoti.model;

import java.sql.Timestamp;

public class HireNotiVO {
	private int hnNo; // 채용공고번호(PK)
	private String hnNotiTitle; // 공고제목
	private int cmNo; // 기업등록번호(FK)
	private int hnSalStart; // 최소급여
	private int hnSalEnd; //  최대급여
	private int hnViews; // 조회수
	private Timestamp hnStart; // 공고시작일
	private Timestamp hnDeadline; // 공고마감일
	private String hnHows; // 접수방법
	private String hnTask; // 주요업무
	private String hnEligiblity; //자격요건
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
	
	private int eduNo; // 학력코드(FK)
	private int careerNo; // 경력코드(FK)
	
	//
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
	public Timestamp getHnStart() {
		return hnStart;
	}
	public void setHnStart(Timestamp hnStart) {
		this.hnStart = hnStart;
	}
	public Timestamp getHnDeadline() {
		return hnDeadline;
	}
	public void setHnDeadline(Timestamp hnDeadline) {
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
	public String getHnEligiblity() {
		return hnEligiblity;
	}
	public void setHnEligiblity(String hnEligiblity) {
		this.hnEligiblity = hnEligiblity;
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
	
	@Override
	public String toString() {
		return "HireNotiVO [hnNo=" + hnNo + ", hnNotiTitle=" + hnNotiTitle + ", cmNo=" + cmNo + ", hnSalStart="
				+ hnSalStart + ", hnSalEnd=" + hnSalEnd + ", hnViews=" + hnViews + ", hnStart=" + hnStart
				+ ", hnDeadline=" + hnDeadline + ", hnHows=" + hnHows + ", hnTask=" + hnTask + ", hnEligiblity="
				+ hnEligiblity + ", hnPreference=" + hnPreference + ", hnStep=" + hnStep + ", hnBenefits=" + hnBenefits
				+ ", hnDocument=" + hnDocument + ", hnAddr=" + hnAddr + ", hnDetailAddr=" + hnDetailAddr + ", hnLat="
				+ hnLat + ", hnLng=" + hnLng + ", hnStatus=" + hnStatus + ", hnGender=" + hnGender + ", hnRecruitNum="
				+ hnRecruitNum + ", eduNo=" + eduNo + ", careerNo=" + careerNo + "]";
	}
	
	
	
}
