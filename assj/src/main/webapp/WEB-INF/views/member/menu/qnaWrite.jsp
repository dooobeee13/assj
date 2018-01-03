<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Q&A 글쓰기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
	function send(form){		
		if(form.name.value.length<1){
			alert("이름을 입력하세요");
			form.name.focus();
			return false;			
		}else if(!form.pwd.value){
			alert("비밀번호를 입력하세요");
			form.pwd.focus();
			return false;			
		}else if(form.title.value==""){
			alert("제목을 입력하세요");
			form.title.focus();
			return false;
		}else if(form.content.value==""){
			alert("내용을 입력하세요");
			form.content.focus();
			return false;
		}
		
		return true;		
	}
</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	.container fieldset{
		margin:0 auto;
		padding:80px;
		background-color:#ffff;
		height:670px;
	}
	.container .form-group{
		margin:6px;
	}
	.container #contents{
		vertical-align:top;
	}
	.container #btnDiv{
		text-align:center;
	}
	label{
		width:60px;
	}
	/* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 670px;
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
			<form role="form" class="form-inline" method="post" action="<c:url value='/member/menu/qnaWrite.do'/>" onsubmit="return send(this)">	
				<h1>Q&A 글쓰기</h1>
				<hr>	
					<div class="form-group">
						<label for="name">이름</label>&nbsp;&nbsp;  
						<input type="text" class="form-control" id="name" name="name" size="35">
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<label for="pwd">비밀번호</label>&nbsp;
						<input type="password" class="form-control" id="pwd" name="pwd" size="17">
					</div>
					<div class="form-group">
						<label for="title">제목</label>&nbsp;&nbsp;   
						<input type="text" class="form-control" name="title" id="title" size="73">
					</div>	
					<div class="form-group">
						<label for="content">내용</label>&nbsp;&nbsp;  
						<textarea rows="12" class="form-control" cols="75" id="content" name="content"></textarea>
					</div>
				<br>
				<br>
				<div id="btnDiv">
					<button type="submit" class="btn btn-default btn-sm" id="okBtn">확인</button>&nbsp;
					<a href="<c:url value='/member/menu/qnaBoard.do'/>"><button type="button" class="btn btn-default btn-sm" id="cancleBtn">취소</button></a><br>
				</div>
			</form>
		</fieldset>
		</div>
	</div>
	</div>
	
	<c:import url="../../index/footer.jsp" />
</body>
</html>