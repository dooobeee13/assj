package com.hy.assj.notice.model;

import com.hy.assj.common.SearchVO;

public class NotiSearchVO extends SearchVO {

	private int notititleNo;

	public int getNotititleNo() {
		return notititleNo;
	}

	public void setNotititleNo(int notititleNo) {
		this.notititleNo = notititleNo;
	}

	@Override
	public String toString() {
		return "NotiSearchVO [notititleNo=" + notititleNo + ", getSearchCondition()=" + getSearchCondition()
				+ ", getSearchKeyword()=" + getSearchKeyword() + ", getSearchUseYn()=" + getSearchUseYn()
				+ ", getCurrentPage()=" + getCurrentPage() + ", getBlockSize()=" + getBlockSize()
				+ ", getFirstRecordIndex()=" + getFirstRecordIndex() + ", getLastRecordIndex()=" + getLastRecordIndex()
				+ ", getRecordCountPerPage()=" + getRecordCountPerPage() + "]";
	}
}
