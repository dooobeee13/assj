<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>    
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <title>마이페이지</title> 
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
    <style type="text/css">
    	
 		
 	 /* 사이드바 스타일 */
  #sidebar-wrapper {
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    /* height: 580px; */
  } 

   .sidebar-nav {
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 0.8em;
    line-height: 2.2em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #7a6666;
  }
  
  .sidebar-nav li a:hover {
    color: #cccc;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
  } 
    </style>
     <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <script type="text/javascript">
  $(function(){
	  var h = $('#page-wrapper').next().css("height");
	 
	 // $('#page-wrapper').attr("height",h);
	  
	/*  $('#page-wrapper').css("height",function(){
		 $('#page-wrapper').next().css("height")
	 }); */
  });
  </script>
  <body>
 	
		<!-- 사이드바 -->
		<div id="page-wrapper" class="col-md-3">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h1>My Page</h1></li>
				<hr>
				<li><h5><b>이력서 관리</b></h5></li>
				<li><a href="<c:url value='/resume/resumeInsert.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>이력서 등록</a></li>
				<li><a href="<c:url value='/resume/resumeList.do' />"><span class="glyphicon glyphicon-chevron-right"></span>이력서 현황</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>자소서 관리</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>맞춤채용 정보</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>맞춤채용 설정</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>나의 맞춤채용 정보</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>스크랩한 공고</b></h5></li>
				<li><a href="<c:url value='/member/menu/scrap.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>스크랩 공고</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>관심기업정보</a></li>
			</ul>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>개인정보 관리</b></h5></li>
				<li><a href="<c:if test="${!empty sessionScope.memberVO.memId}"><c:url value='/member/edit/psMemEdit.do'/></c:if><c:if test="${!empty sessionScope.cmMemberVO.cmId}"><c:url value='/member/edit/cmMemEdit.do'/></c:if>"><span class="glyphicon glyphicon-chevron-right"></span>개인정보 수정</a></li>
				<li><a href="<c:url value='/member/trans/pwdTrans.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>비밀번호 변경</a></li>
			</ul>
		</div>
	</div>
	
</body>
</html>
    