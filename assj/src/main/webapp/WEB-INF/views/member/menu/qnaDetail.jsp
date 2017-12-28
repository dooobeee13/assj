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
<title>Q&A 상세보기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
 	$(document).ready(function(){
 		$('#btn_delete').click(function(){
 			
 		var groupNo=$('#groupNo').val();
 			
 		window.open("<c:url value='/member/menu/qnaOut.do?groupNo="+groupNo+"'/>",'delete',
 					'left=0,top=0,width=450,height=200,locations=yes,resizable=yes');
 		});
 	});
</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	.container fieldset{
		margin:0 auto;
		padding:80px;
		background-color:#ffff;
	}
	.container .form-group{
		margin:10px;
	}
	.container #contents{
		vertical-align:top;
	}
	.container #btnDiv{
		text-align:center;
	}
	.container #date{
		float:right;
	}
	#bottonBtn{
		text-align:center;
	}
/* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 900px;
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
			<form role="form" class="form-inline" id="myform" method="post" target="window_delete" action="<c:url value='/member/menu/edit.do'/>">				
				<input type="text" name="groupNo" id="groupNo" value="${vo.no}">
				<input type="text" name="sortNo" id="sortNo" value="${vo.sortNo}">
				<input type="text" name="step" id="step" value="${vo.step}">
				<h1>알쓸신JOB Q&A</h1>
				<div class="form-group">
					<div id="date">
						등록일:<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/>&nbsp;&nbsp; 조회수:${vo.readCount}
					</div>
					<br>
					<hr>			
					<br>	
					<label for="title">제목</label>&nbsp;&nbsp;  
					<input type="text" class="form-control" id="title" name="title" size="40"
					value="${vo.title}" readonly="readonly">
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<label for="name">작성자</label>&nbsp;&nbsp;   
					<input type="text" class="form-control" name="name" id="name" size="14" 
					value="${vo.name}" readonly="readonly">
				</div>
				<br>
				<div class="form-group">
					<label for="contents">내용</label>&nbsp;&nbsp;  
					<textarea class="form-control" rows="12" cols="75" id="contents" name="contents" readonly="readonly">${vo.content}</textarea>
				</div>
		  </form>
				<br>
				<hr>
				<div id="bottonBtn">
					<a href="<c:url value='/member/menu/edit.do?no=${vo.no}'/>"><button type="button" class="btn btn-default btn-sm" onclick="trans()">수정</button></a>
					<button type="button" class="btn btn-default btn-sm" id="btn_delete">삭제</button>
					<button type="button" class="btn btn-default btn-sm">답변</button>&nbsp;
					<a href="<c:url value='/member/menu/qnaBoard.do'/>"><button type="button" class="btn btn-default btn-sm">목록</button></a>
				</div>
		
			</fieldset>
		</div>
		</div>
		</div>
		<c:import url="../../index/footer.jsp" />
</body>
</html>