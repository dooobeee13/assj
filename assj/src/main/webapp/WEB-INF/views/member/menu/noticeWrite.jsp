<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공지사항 글쓰기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(window).load(function(){
	   		$("select option[value='1']").attr("selected", true);
			 
			$('select option:eq(0)').css('color','red');
			$('select option:eq(1)').css('color','blue');
			$('select option:eq(2)').css('color','orange');
			$('select option:eq(3)').css('color','green');
		});
		
		$('#cancleBtn').click(function(){
			location.href="<c:url value='/member/menu/notice.do'/>"
		});
		
		$('#okBtn').click(function(){
			if($('#title').val()==''){
				alert('제목을 입력하세요');
				$('#title').focus();
				return false;
			}else if($('#contents').val()==''){
				alert('내용을 입력하세요');
				$('#contents').focus();
				return false;
			}
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
	.container #size{
		font-size:1.5em;
		vertical-align: middle;
	}
	.container #adminDiv{
		text-align: right;
	}
	.container #adminDiv img{
		vertical-align: bottom;
	}
	/* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 720px;
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

	
		<div class="col-md-9">
		<fieldset>
		<form role="form" class="form-inline" method="post" action="<c:url value='/member/menu/noticeWrite.do'/>">	
			<h1>공지사항 글쓰기</h1>
			<hr>
			<div id="adminDiv">
				<img style="width:24px" alt="admin" src="<c:url value='/images/admin1.png'/>">&nbsp;[admin]관리자 입니다.				
			</div>
			<div class="form-group">
				<label for="noticetitleNo">구분</label>&nbsp;&nbsp;  
				<select class="form-control" id="noticetitleNo" name="noticetitleNo" >
					<option value="1">공지</option>
					<option value="2">이벤트</option>
					<option value="3">오픈</option>
					<option value="4">뉴스</option>
				</select>
				<span id="size" class="glyphicon glyphicon-list"></span>
			</div>
			<br>
			<div class="form-group">
				<label for="title">제목</label>&nbsp;&nbsp;  
				<input type="text" class="form-control" id="title" name="title" size="73">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<!-- <label for="adminNo">작성자</label>&nbsp;&nbsp;  --> 
				<input type="hidden" class="form-control" id="adminNo" name="adminNo" size="12" value='1'>
			</div>
			<br>
			<div class="form-group">
				<label for="contents">내용</label>&nbsp;&nbsp;  
				<textarea class="form-control" rows="15" cols="75" id="contents" name="contents"></textarea>
			</div>
			<br>
			<br>
			<div id="btnDiv">
				<button type="submit" class="btn btn-default btn-sm" id="okBtn">확인</button>&nbsp;
				<button type="button" class="btn btn-default btn-sm" id="cancleBtn">취소</button><br>
			</div>
		</form>
		</fieldset>
		</div>
		</div>
	</div>

	
	<c:import url="../../index/footer.jsp" />
</body>
</html>