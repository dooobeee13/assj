package com.hy.assj.hirenoti.model;

import java.util.List;

import com.hy.assj.common.SearchVO;

public interface HireNotiService {
	public int insertHireNoti(HireNotiVO vo);
	public List<HireNotiVO> selectAll(SearchVO searchVo);
}
