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
	.se1{
		padding-left: 200px;
		padding-right: 200px;
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
	<header>
	</header>
	<h1 class="text-center">전체공고 / 지원자 관리</h1>

	<section class="se1">
	<ul class="nav nav-tabs" id="">
		<li><a href="#">진행중(0건)</a></li>
		<li><a href="#">대기(0건)</a></li>
		<li><a href="#">마감(0건)</a></li>
		<li><a href="#">전체(0건)</a></li>
		<li><input type="button" class="btn btn-primary btn-md" value="채용공고 등록" 
		onClick="self.location='hire1.do';"></li>
		
	</ul>
	
		<div class="table table-hover">
			<table >
				
				<caption>공고 게시판</caption>
				<colgroup>
					<col style="width: 100px;" />
					<col style="width: 300px;" />
					<col style="width: 80px;" />
					<col style="width: 80px;" />
					<col style="width: 80px;" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">담당자</th>
						<th scope="col">시작일</th>
						<th scope="col">마감일</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty list}">
						<tr>
							<td colspan="5" style="text-align: center;">해당하는 데이터가 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${!empty list}">
						<!--게시판 내용 반복문 시작  -->
						<c:forEach var="vo" items="${list }" varStatus="status">
							<tr style="text-align: center">
								<td>${vo.no}</td>
								<td style="text-align: left"><a
									href="<c:url value='/board/countUpdate.do?no=${vo.no}'/>">
										${vo.title}</a></td>
								<td>${vo.name}</td>
								<td><fmt:formatDate value="${vo.regdate}"
										pattern="yyyy-MM-dd" /></td>
								<td>${vo.readcount}</td>
							</tr>
						</c:forEach>
						<!--반복처리 끝  -->
					</c:if>
				</tbody>
			</table>
		</div>
		<div class="divPage">
			<!-- 페이지 번호 추가 -->
			<!-- 이전 블럭으로 이동 ◀ -->
			<c:if test="${pagingInfo.firstPage>1 }">
				<a href="#" onclick="pageFunc(${pagingInfo.firstPage-1})"> <img
					src="<c:url value='/images/first.JPG'/>">
				</a>
			</c:if>

			<span id="pageBlock"> <!-- [1][2][3][4][5][6][7][8][9][10] -->
				<c:forEach var="i" begin="${pagingInfo.firstPage}"
					end="${pagingInfo.lastPage}">
					<c:if test="${i==pagingInfo.currentPage}">
						<span style="font-weight: bold; color: blue">${i }</span>
					</c:if>
					<c:if test="${i!=pagingInfo.currentPage}">
						<a href="#" onclick="pageFunc(${i })"> [${i }]</a>
					</c:if>
				</c:forEach>
			</span>
			<!-- 다음 블럭으로 이동 ▶ -->
			<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage}">
				<a href="#" onclick="pageFunc(${pagingInfo.lastPage+1})"> <img
					src="<c:url value='/images/last.JPG'/>">
				</a>
			</c:if>

			<!--  페이지 번호 끝 -->
		</div>
		<div class="divSearch">
			<form name="frmSearch" method="post"
				action="<c:url value='/hire_noti/hire2.do'/>">
				<select name="searchCondition">
					<option value="title"
						<c:if test="${param.searchCondition=='title' }"> 
            		selected
            	</c:if>>공고제목</option>
					<option value="name"
						<c:if test="${param.searchCondition=='name' }"> 
            		selected
            	</c:if>>담당자명</option>
				</select> 
		
					<input type="text" name="searchKeyword" title="검색어 입력" placeholder="검색어 입력"
						value="${param.searchKeyword }"> 
					<input type="submit"value="검색">  
				
			</form>
		</div>

	</section>
	<nav>
		<div class="col-md-2">
			<ul class="nav nav-pills nav-stacked">
				<li ><a href="#">전체공고(0)</a></li>
				<li><a href="#">└진행중공고(0)</a></li>
				<li><a href="#">└대기중공고(0)</a></li>
				<li><a href="#">└마감된공고(0)</a></li>
				<li ><a href="#">문자이메일 발송 내역</a></li>
			</ul>
		</div>
	</nav>

</body>
</html>