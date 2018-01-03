package com.hy.assj.vo;

public class HnRankVO {
	
	private int hnRankNo;
	private int RankNo;
	private int hnNo;
	
	public int getHnRankNo() {
		return hnRankNo;
	}
	public void setHnRankNo(int hnRankNo) {
		this.hnRankNo = hnRankNo;
	}
	public int getRankNo() {
		return RankNo;
	}
	public void setRankNo(int rankNo) {
		RankNo = rankNo;
	}
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	@Override
	public String toString() {
		return "HnRankVO [hnRankNo=" + hnRankNo + ", RankNo=" + RankNo + ", hnNo=" + hnNo + "]";
	}
	
}
