package com.hy.assj.administrator.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class AdminLoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		
		if(uri.indexOf("adminlogin.do")!=-1) {
			return true;
		}
		
		String adminUserid = (String)request.getSession().getAttribute("adminid");
		if(adminUserid==null || adminUserid.isEmpty()) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('관리자 로그인이 되지 않았습니다.');");
			out.println("location.href='"+request.getContextPath()+"/administrator/login/adminlogin.do';</script>");
			return false;
		}
		
		return true;
	}

}
