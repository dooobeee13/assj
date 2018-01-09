package com.hy.assj.main.model;

import com.hy.assj.notice.model.NoticeVO;

public class MNoticeVO extends NoticeVO{

	private String notititle;

	public String getNotititle() {
		return notititle;
	}

	public void setNotititle(String notititle) {
		this.notititle = notititle;
	}

	@Override
	public String toString() {
		return "MNoticeVO [notititle=" + notititle + ", " + super.toString() + "]";
	}
	
	
}
