package com.hy.assj.common;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hy.assj.analytics.model.AnalyticsService;

@Component
public class AnalyticsCountUtil extends HttpServlet implements HttpSessionListener {
	
	private static final Logger logger = LoggerFactory.getLogger(AnalyticsCountUtil.class);
	
	@Autowired
	private AnalyticsService analyService;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ddddddddd");
		Map<String, Object> todayList = analyService.selectAnalyToday();
		logger.info("오늘 통계처리용 디비 존재 여부 = {}",todayList.size());
		if(todayList.size()==0) {
			analyService.newAnalytics();
			analyService.updateCountView();
		}else {
			analyService.updateCountView();
		}

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map<String, Object> todayList = analyService.selectAnalyToday();
		logger.info("오늘 통계처리용 디비 존재 여부 = {}",todayList.size());
		if(todayList.size()==0) {
			analyService.newAnalytics();
			analyService.updateCountView();
		}else {
			analyService.updateCountView();
		}

	}
	
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		Map<String, Object> todayList = analyService.selectAnalyToday();
		logger.info("오늘 통계처리용 디비 존재 여부 = {}",todayList.size());
		
		if(todayList.size()==0) {
			analyService.newAnalytics();
			analyService.updateTotalCount();
			analyService.updateCountView();
		}else {
			analyService.updateTotalCount();
			analyService.updateCountView();
		}
		
	}
	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		analyService.updateCountViewDown();
	}
	
}
