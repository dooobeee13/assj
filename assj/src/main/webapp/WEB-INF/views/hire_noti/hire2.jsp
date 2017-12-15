<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="top.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1"><!-- 반응형 웹을위한 메타태그 -->
<title>assj 공고/지원자관리</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/mainstyle.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/clear.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/layout.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/mystyle.css"/>

<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet"> 
<style type="text/css">

</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<header>
	</header>
	<h1 class="text-center">전체공고 / 지원자 관리</h1>

	<section style="padding-left: 200px">
	<ul class="nav nav-tabs" id="">
		<li><a href="#">진행중(0건)</a></li>
		<li><a href="#">대기(0건)</a></li>
		<li><a href="#">마감(0건)</a></li>
		<li><a href="#">미완성(0건)</a></li>
		<li><a href="#">전체(0건)</a></li>
		<input type="button" class="btn btn-primary btn-md" value="채용공고 등록" onClick="self.location='hire1.do';">
	</ul>
	</section>
	<nav>
		<div class="col-md-3">
			<ul class="nav nav-pills nav-stacked">
				<li ><a href="#">전체공고(0)</a></li>
				<li><a href="#">└진행중공고(0)</a></li>
				<li><a href="#">└대기중공고(0)</a></li>
				<li><a href="#">└마감된공고(0)</a></li>
				<li><a href="#">└미완성공고(0)</a></li>
				<li ><a href="#">채용공고상품관리</a></li>
				<li ><a href="#">검새키워드상품관리</a></li>
				<li ><a href="#">패키지 상품관리</a></li>
				<li ><a href="#">문자이메일 발송 내역</a></li>
			</ul>
		</div>
	</nav>
	<nav>
	
	
	</nav>
</body>
</html>