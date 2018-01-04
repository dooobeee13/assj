<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>1:1상담문의</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">


</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	
	.container fieldset {
		padding: 40px;
		background-color: #ffff;
	}
	.container #searchTable{
		float:right;
	}
	.container table th,table{
		text-align:center;
	}
	.container #title{
		font-size:0.6em;
	}
	.container #date{
		text-align: right;
	}
	.container .well{
		background: #dde0e5;
	}
	.container #list{
		background-color:#ebecee;
	}
	.container #ListDiv{
		text-align: right;
	}
	.container #contentsDiv{
		height:500px;
	}
 /* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 1030px;
  } 

   .sidebar-nav {
   /*  width: 250px;
    margin: 0;
    padding: 0; */
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
</head>
<body>
	<c:import url="../../index/top.jsp" />
	

	<div class="container">
		<div class="row">
		<!-- 사이드바 -->
		<div id="page-wrapper" class="col-md-3">
			<div id="sidebar-wrapper">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h1>
							<b>고객센터</b>
						</h1></li>
					<hr>
					<li><h5>
							<b>무엇을 도와드릴까요?</b>
						</h5></li>
					<li><a href="<c:url value='/member/menu/notice.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>공지사항</a></li>
					<li><a href="<c:url value='/member/menu/qnaBoard.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>Q&A</a></li>
					<li><a href="<c:url value='/member/menu/onenone.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>이메일 문의</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>아이디.비밀번호 찾기</a></li>
				</ul>
				<hr>
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h5>
							<b>개인회원서비스</b>
						</h5></li>
					<li><a href="<c:url value='/member/menu/psService.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>개인회원 안내</a></li>
					<li><a href="<c:url value='/member/out/psMemOut.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>개인회원 탈퇴</a></li>
				</ul>
				<hr>
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h5>
							<b>기업회원서비스</b>
						</h5></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>채용광고 안내</a></li>
					<li><a href="<c:url value='/member/out/cmMemOut.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>기업회원 탈퇴</a></li>
				</ul>
			</div>
		</div>
<!-- /사이드바 -->

<!-- 본문 -->
		<div class="col-md-9">
			<fieldset>
				<h1>공지사항</h1>
				<br>
				<hr>
				<div>	
					<div class="well well-lg">
						<h1>
						<c:if test="${map.NOTITITLE=='공지'}">
							<span style="color:red">[<b>${map.NOTITITLE}</b>]</span>			
						</c:if>
						<c:if test="${map.NOTITITLE=='이벤트'}">
							<span style="color:blue">[<b>${map.NOTITITLE}</b>]</span>			
						</c:if>
						<c:if test="${map.NOTITITLE=='오픈'}">
							<span style="color:orange">[<b>${map.NOTITITLE}</b>]</span>			
						</c:if>
						<c:if test="${map.NOTITITLE=='뉴스'}">
							<span style="color:green">[<b>${map.NOTITITLE}</b>]</span>			
						</c:if>			
						<span id="title">${map.TITLE }</span>
						</h1>
						
						<p id="date">등록일:<fmt:formatDate value="${map.REGDATE}" pattern="yyyy-mm-dd hh-mm-ss"/>&nbsp;&nbsp; 조회수:${map.READCOUNT}</p>
					</div>
					<div id="contentsDiv">
						${map.CONTENTS}
					</div>
					<hr>
					<c:if test="${!empty nexPre.NEXT_TITLE}">
						다음글 <span class="glyphicon glyphicon-triangle-top"></span>&nbsp;&nbsp;&nbsp;<a href="<c:url value='/member/menu/countUpdate.do?no=${nexPre.NEXT_NO}'/>">${nexPre.NEXT_TITLE}</a>
					</c:if>
					<br>
					<c:if test="${!empty nexPre.PRE_TITLE}">
						이전글 <span class="glyphicon glyphicon-triangle-bottom"></span>&nbsp;&nbsp;&nbsp;<a href="<c:url value='/member/menu/countUpdate.do?no=${nexPre.PRE_NO}'/>">${nexPre.PRE_TITLE}</a><br>
					</c:if>
					<hr>
					<div id="ListDiv">
					<a href="<c:url value='/member/menu/notice.do'/>"><button type="button" class="btn btn-default btn-sm" id="list">목록으로</button></a>
					</div>
				</div>
			</fieldset>
		</div>
		</div>
	</div>
	<c:import url="../../index/footer.jsp" />
</body>
</html>