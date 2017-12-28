package com.hy.assj.recruit.model;

import java.sql.Date;
import java.util.List;

import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.PositionVO;
import com.hy.assj.vo.RankVO;
import com.hy.assj.vo.SectorsVO;

public class HireNotiVO {

	private int hnNo;
	private String hnNotititle;
	private int cmNo;
	private int hnSalStart;
	private int hnSalEnd;
	private int hnViews;
	private Date hnStart;
	private Date hnDeadline;
	private String hnHows;
	private String hnTask;
	private String hnEligibility;
	private String hnPreference;
	private String hnStep;
	private String hnBenefits;
	private String hnDocument;
	private String hnAddr;
	private String hnDetailAddr;
	private double hnLat;
	private double hnLng;
	private String hnStatus;
	private String hnGender;
	private int hnRecruitNum;
	private int eduNo;
	private int careerNo;
	
	private List<MajorVO> majorList;
	private List<PositionVO> positionList;
	private List<OccupationVO> occupationList;
	private List<SectorsVO> sectorList;
	private List<RankVO> rankList;
	private List<EmpTypeVO> empTypeList;
	
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	public String getHnNotititle() {
		return hnNotititle;
	}
	public void setHnNotititle(String hnNotititle) {
		this.hnNotititle = hnNotititle;
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
	public Date getHnStart() {
		return hnStart;
	}
	public void setHnStart(Date hnStart) {
		this.hnStart = hnStart;
	}
	public Date getHnDeadline() {
		return hnDeadline;
	}
	public void setHnDeadline(Date hnDeadline) {
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
	public double getHnLat() {
		return hnLat;
	}
	public void setHnLat(double hnLat) {
		this.hnLat = hnLat;
	}
	public double getHnLng() {
		return hnLng;
	}
	public void setHnLng(double hnLng) {
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
	public List<MajorVO> getMajorList() {
		return majorList;
	}
	public void setMajorList(List<MajorVO> majorList) {
		this.majorList = majorList;
	}
	public List<PositionVO> getPositionList() {
		return positionList;
	}
	public void setPositionList(List<PositionVO> positionList) {
		this.positionList = positionList;
	}
	public List<OccupationVO> getOccupationList() {
		return occupationList;
	}
	public void setOccupationList(List<OccupationVO> occupationList) {
		this.occupationList = occupationList;
	}
	public List<SectorsVO> getSectorList() {
		return sectorList;
	}
	public void setSectorList(List<SectorsVO> sectorList) {
		this.sectorList = sectorList;
	}
	public List<RankVO> getRankList() {
		return rankList;
	}
	public void setRankList(List<RankVO> rankList) {
		this.rankList = rankList;
	}
	public List<EmpTypeVO> getEmpTypeList() {
		return empTypeList;
	}
	public void setEmpTypeList(List<EmpTypeVO> empTypeList) {
		this.empTypeList = empTypeList;
	}
	
	@Override
	public String toString() {
		return "HireNotiVO [hnNo=" + hnNo + ", hnNotititle=" + hnNotititle + ", cmNo=" + cmNo + ", hnSalStart="
				+ hnSalStart + ", hnSalEnd=" + hnSalEnd + ", hnViews=" + hnViews + ", hnStart=" + hnStart
				+ ", hnDeadline=" + hnDeadline + ", hnHows=" + hnHows + ", hnTask=" + hnTask + ", hnEligibility="
				+ hnEligibility + ", hnPreference=" + hnPreference + ", hnStep=" + hnStep + ", hnBenefits=" + hnBenefits
				+ ", hnDocument=" + hnDocument + ", hnAddr=" + hnAddr + ", hnDetailAddr=" + hnDetailAddr + ", hnLat="
				+ hnLat + ", hnLng=" + hnLng + ", hnStatus=" + hnStatus + ", hnGender=" + hnGender + ", hnRecruitNum="
				+ hnRecruitNum + ", eduNo=" + eduNo + ", careerNo=" + careerNo + ", majorList=" + majorList
				+ ", positionList=" + positionList + ", occupationList=" + occupationList + ", sectorList=" + sectorList
				+ ", rankList=" + rankList + ", empTypeList=" + empTypeList + "]";
	}
	
}
