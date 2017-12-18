package com.hy.assj.hireInfo.model;

public class RankVO {

	private int rankNo;
	private String rankName;
	private String rankRemark;
	
	public int getRankNo() {
		return rankNo;
	}
	public void setRankNo(int rankNo) {
		this.rankNo = rankNo;
	}
	public String getRankName() {
		return rankName;
	}
	public void setRankName(String rankName) {
		this.rankName = rankName;
	}
	public String getRankRemark() {
		return rankRemark;
	}
	public void setRankRemark(String rankRemark) {
		this.rankRemark = rankRemark;
	}
	@Override
	public String toString() {
		return "Rank [rankNo=" + rankNo + ", rankName=" + rankName + ", rankRemark=" + rankRemark + "]";
	}
	
}
