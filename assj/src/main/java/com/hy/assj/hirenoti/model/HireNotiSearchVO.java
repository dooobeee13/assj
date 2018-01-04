package com.hy.assj.hirenoti.model;

import com.hy.assj.common.SearchVO;

public class HireNotiSearchVO extends SearchVO{

	private int memNo;

	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
	@Override
	public String toString() {
		return "HireNotiSearchVO [memNo=" + memNo + "," + super.toString() + "]";
	}
}
