<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mainstyle.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/clear.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layout.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mystyle.css"/>

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
        
</head>

<body>	
	<!-- 상단 띠 이미지 영역-->
	<div id="topImg" class="top_Img" style="background:url(${pageContext.request.contextPath}/images/bg_top1.PNG)  repeat-x">
		&nbsp;
	</div>

	<div id="wrap">
					
		<header id="header">
		<nav id="top_navi">
			<div id='cssmenu'>
				<ul class="nav nav-tabs">			   
				   <li ><a href="<c:url value='/hire_noti/hire1.do'/>" data-toggle="tab"><span>공고등록</span></a></li>
				   <li><a href="<c:url value='/hire_noti/hire2.do'/>" data-toggle="tab"><span>공고.지원자 관리</span></a></li>
				   <li><a href="<c:url value='/hire_noti/hire3.do'/>" data-toggle="tab"><span>인재검색</span></a></li>
				   <li><a href="#tab6" data-toggle="tab"><span>면접관리</span></a></li>
				</ul>
			</div>
		</nav>
		</header>

		
		
		
			
			
			
			
			
			
			
			
			
			
			
			
			
			