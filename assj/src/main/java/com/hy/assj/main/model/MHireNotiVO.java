package com.hy.assj.main.model;

public class MHireNotiVO {

	private int hnNo;
	private String cmHomepage;
	private String cmLogo;
	private String cmName;
	private String hnNotititle;
	private int dday;
	
	public int getHnNo() {
		return hnNo;
	}
	public void setHnNo(int hnNo) {
		this.hnNo = hnNo;
	}
	public String getCmHomepage() {
		return cmHomepage;
	}
	public void setCmHomepage(String cmHomepage) {
		this.cmHomepage = cmHomepage;
	}
	public String getCmLogo() {
		return cmLogo;
	}
	public void setCmLogo(String cmLogo) {
		this.cmLogo = cmLogo;
	}
	public String getCmName() {
		return cmName;
	}
	public void setCmName(String cmName) {
		this.cmName = cmName;
	}
	public String getHnNotititle() {
		return hnNotititle;
	}
	public void setHnNotititle(String hnNotititle) {
		this.hnNotititle = hnNotititle;
	}
	public int getDday() {
		return dday;
	}
	public void setDday(int dday) {
		this.dday = dday;
	}
	@Override
	public String toString() {
		return "MHireNotiVO [hnNo=" + hnNo + ", cmHomepage=" + cmHomepage + ", cmLogo=" + cmLogo + ", cmName=" + cmName
				+ ", hnNotititle=" + hnNotititle + ", dday=" + dday + "]";
	}
		
}
