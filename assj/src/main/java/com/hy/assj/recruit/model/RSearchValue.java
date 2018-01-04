package com.hy.assj.recruit.model;

import java.util.List;

public class RSearchValue {

	private List<Integer> occuList;
	private List<String> addrList;
	private List<Integer> careerList;
	private List<Integer> eduList;
	private List<Integer> csList;
	private List<Integer> etList;
	private List<Integer> secList;
	private List<Integer> rankList;
	private List<Integer> postionList;
	private List<Integer> majorList;
	private List<Integer> areaList;
	private List<Integer> topAreaList;
	
	private int hnExpyearMin;
	private int hnExpyearMax;
	private int hnSalStart;
	private int hnSalEnd;
	
	public List<Integer> getOccuList() {
		return occuList;
	}
	public void setOccuList(List<Integer> occuList) {
		this.occuList = occuList;
	}
	public List<String> getAddrList() {
		return addrList;
	}
	public void setAddrList(List<String> addrList) {
		this.addrList = addrList;
	}
	public List<Integer> getCareerList() {
		return careerList;
	}
	public void setCareerList(List<Integer> careerList) {
		this.careerList = careerList;
	}
	public List<Integer> getEduList() {
		return eduList;
	}
	public void setEduList(List<Integer> eduList) {
		this.eduList = eduList;
	}
	public List<Integer> getCsList() {
		return csList;
	}
	public void setCsList(List<Integer> csList) {
		this.csList = csList;
	}
	public List<Integer> getEtList() {
		return etList;
	}
	public void setEtList(List<Integer> etList) {
		this.etList = etList;
	}
	public List<Integer> getSecList() {
		return secList;
	}
	public void setSecList(List<Integer> secList) {
		this.secList = secList;
	}
	public List<Integer> getRankList() {
		return rankList;
	}
	public void setRankList(List<Integer> rankList) {
		this.rankList = rankList;
	}
	public List<Integer> getPostionList() {
		return postionList;
	}
	public void setPostionList(List<Integer> postionList) {
		this.postionList = postionList;
	}
	public List<Integer> getMajorList() {
		return majorList;
	}
	public void setMajorList(List<Integer> majorList) {
		this.majorList = majorList;
	}
	public List<Integer> getAreaList() {
		return areaList;
	}
	public void setAreaList(List<Integer> areaList) {
		this.areaList = areaList;
	}
	public List<Integer> getTopAreaList() {
		return topAreaList;
	}
	public void setTopAreaList(List<Integer> topAreaList) {
		this.topAreaList = topAreaList;
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
	@Override
	public String toString() {
		return "RSearchValue [occuList=" + occuList + ", addrList=" + addrList + ", careerList=" + careerList
				+ ", eduList=" + eduList + ", csList=" + csList + ", etList=" + etList + ", secList=" + secList
				+ ", rankList=" + rankList + ", postionList=" + postionList + ", majorList=" + majorList + ", areaList="
				+ areaList + ", topAreaList=" + topAreaList + ", hnExpyearMin=" + hnExpyearMin + ", hnExpyearMax="
				+ hnExpyearMax + ", hnSalStart=" + hnSalStart + ", hnSalEnd=" + hnSalEnd + "]";
	}
	
}
