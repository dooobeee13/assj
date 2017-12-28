package com.hy.assj.vo;

import java.sql.Timestamp;

public class NewsVO {
	private int newsNo;
	private String newsTitle;
	private String newsURL;
	private String newsWriter;
	private String newsContent;
	private Timestamp newsRegdate;

	public NewsVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getNewsNo() {
		return newsNo;
	}
	public void setNewsNo(int newsNo) {
		this.newsNo = newsNo;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsURL() {
		return newsURL;
	}
	public void setNewsURL(String newsURL) {
		this.newsURL = newsURL;
	}
	public String getNewsWriter() {
		return newsWriter;
	}
	public void setNewsWriter(String newsWriter) {
		this.newsWriter = newsWriter;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public Timestamp getNewsRegdate() {
		return newsRegdate;
	}
	public void setNewsRegdate(Timestamp newsRegdate) {
		this.newsRegdate = newsRegdate;
	}
	
	@Override
	public String toString() {
		return "NewsVO [newsNo=" + newsNo + ", newsTitle=" + newsTitle + ", newsURL=" + newsURL + ", newsWriter="
				+ newsWriter + ", newsContent=" + newsContent + ", newsRegdate=" + newsRegdate + "]";
	}
	
	
}
