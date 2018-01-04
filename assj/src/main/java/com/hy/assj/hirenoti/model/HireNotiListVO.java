package com.hy.assj.hirenoti.model;

import java.util.List;


public class HireNotiListVO {
	private List<HireNotiVO> scrapItems;

	public List<HireNotiVO> getScrapItems() {
		return scrapItems;
	}

	public void setScrapItems(List<HireNotiVO> scrapItems) {
		this.scrapItems = scrapItems;
	}

	@Override
	public String toString() {
		return "HireNotiListVO [scrapItems=" + scrapItems + "]";
	}
	
}
