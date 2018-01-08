<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="top.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1"><!-- 반응형 웹을위한 메타태그 -->
<title>assj 공고/지원자관리</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainstyle.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/clear.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/layout.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mystyle.css'/>"/>

<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet"> 
<style type="text/css"> 
	#div1{
		width: 70%;
	}
	#div2{
		width: 30%;  
	} 
	
	.dv{
		float: left; 
	}
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>

	<section class="se1">
		
			<nav class="col-md-2">

				<ul class="nav nav-pills nav-stacked">
					<li><a href="#">전체공고(0)</a></li>
					<li><a href="#">└진행중공고(0)</a></li>
					<li><a href="#">└대기중공고(0)</a></li>
					<li><a href="#">└마감된공고(0)</a></li>
					<li><a href="#">문자이메일 발송 내역</a></li>  
				</ul>

			</nav>
		
		<div>
			<div class="dv">

				<ul class="nav nav-tabs" id="">
					<li><a href="#">진행중(0건)</a></li>
					<li><a href="#">대기(0건)</a></li>
					<li><a href="#">마감(0건)</a></li>
					<li><a href="#">전체(0건)</a></li>
					<li><input type="button" class="btn btn-primary btn-md"
						value="채용공고 등록" onClick="self.location='hire1.do';"></li>
				</ul>

			</div>
			<div id="div1" class="dv">
				<table class="table table-hover">
					
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>

							<th scope="col">공고시작일</th>
							<th scope="col">공고마감일</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty list}">
							<tr>
								<td colspan="4" style="text-align: center;">해당하는 데이터가 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${!empty list}">
							<!--게시판 내용 반복문 시작  -->
							<c:forEach var="vo" items="${list}">
								<tr>
									<td>${vo['HN_NO']}</td>
									<td><a
										href="<c:url value='/hire_noti/hire1Detail.do?hnNo=${vo["HN_NO"]}'/>">${vo['HN_NOTITITLE']}</a></td>
									<td><fmt:formatDate value="${vo['HN_START']}"
											pattern="yyyy-MM-dd" /></td>
									<td><fmt:formatDate value="${vo['HN_DEADLINE']}"
											pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
							<!--반복처리 끝  -->
						</c:if>
					</tbody>
				</table>

			</div> 
		</div>

	</section>
</body>
</html>