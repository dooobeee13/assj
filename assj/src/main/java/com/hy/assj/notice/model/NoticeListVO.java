package com.hy.assj.notice.model;

import java.util.List;


public class NoticeListVO {
	private List<NoticeVO> notiItems;

	public List<NoticeVO> getNotiItems() {
		return notiItems;
	}

	public void setNotiItems(List<NoticeVO> notiItems) {
		this.notiItems = notiItems;
	}
	
	@Override
	public String toString() {
		return "NoticeListVO [notiItems=" + notiItems + "]";
	}
	
}
