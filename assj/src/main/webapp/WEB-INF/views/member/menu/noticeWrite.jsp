<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>" ></script>
<script type="text/javascript">
$(function(){
	$("select option[value='1']").attr("selected", true);
	 
	$('select option:eq(0)').css('color','red');
	$('select option:eq(1)').css('color','blue');
	$('select option:eq(2)').css('color','orange');
	$('select option:eq(3)').css('color','green');
	
	$('#cancleBtn').click(function(){
		location.href="<c:url value='/member/menu/noticeEditOut.do'/>"
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
<style type="text/css">
	.container fieldset{
		/* margin:0; */
		width:70%;
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
	.Advertising{
		position: relative;
		width: 100%;
		height: 20%;
		margin:10px;
		float: right;
		box-sizing: border-box;
		background:#FBFFFF;
		box-shadow: 2px 2px 2px #b8b8b8;
		border-radius: 12px 12px 0 0;
	}
	
	.Advertising-div{
		position: absolute;
		top: 30px;
		right: 10px;		
		padding:0;
		margin:0 auto;
		width:22%;
		height:100%;
		box-sizing: border-box;
	}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
		<c:import url="../../administrator/inc/adminTop.jsp"/>
		<!-- 섹션 부분 -->
	 	<div class="col-div-80-100" style="margin-left:1em; width:83%; font-size:0.7em;"> 
			<div class="col-div-80-20 "> 	
				<div class="container">
					<fieldset>
					<form role="form" class="form-inline" method="post" action="<c:url value='/member/menu/noticeWrite.do'/>">	
						<h1>공지사항 글쓰기</h1>
						<hr>
						<div id="adminDiv">
							<b>[admin]</b>관리자 입니다.				
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
							<textarea class="form-control" rows="13" cols="75" id="contents" name="contents"></textarea>
						</div>
						<br>
						<br>
						<div id="btnDiv">
							<button type="submit" class="btn btn-default btn-sm" id="okBtn" style="background-color:#607D8B; color:#ffff" >확인</button>&nbsp;
							<button type="button" class="btn btn-default btn-sm" id="cancleBtn">취소</button><br>
						</div>
					</form>
					</fieldset>
			</div>
			</div>
			<div class="Advertising-div">	
				<!-- 메인 화면 통계부분 처리 -->
				<div class="Advertising">
						<div class="col-div-100-20 divMainbox">
							<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 회원</h2>
						</div>
						
						<div class="col-div-35-80" style="padding-top:1em;">
							<img alt="" src="<c:url value='/icon/visitorimg.png'/>">
						</div>
						<div class="col-div-65-80" style="padding-top:2em;">
							<ul>
								<li style="border-left:1.5px solid #b8b8b8;"><span>총 회원 수 : </span><strong>10,223명</strong></li>
								<li style="border-left:1.5px solid #b8b8b8; padding-top:0.6em;"><span>오늘 가입자 수 : </span><strong>56명</strong></li>
							</ul>
						</div>
					</div>
					<div class="Advertising">
						<div class="col-div-100-20 divMainbox">
							<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 이력서</h2>
						</div>
						<div class="col-div-35-80" style="padding-top:1em;">
							<img alt="" src="<c:url value='/icon/curriculum.png'/>">
						</div>
						<div class="col-div-65-80" style="padding-top:2em;">
							<ul>
								<li style="border-left:1.5px solid #b8b8b8;"><span>총 이력서 : </span><strong>4,658 장</strong></li>
								<li style="border-left:1.5px solid #b8b8b8; padding-top:0.6em;"><span>새로 등록된 이력서 : </span><strong>56장</strong></li>
							</ul>
						</div>
					</div>
					<div class="Advertising">
						<div class="col-div-100-20 divMainbox">
							<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 1:1 문의 현황</h2>
						</div>
						<div class="col-div-35-80" style="padding-top:2.5em;">
							<img alt="" src="<c:url value='/icon/QNA.png'/>">
						</div>
						<div class="col-div-65-80" style="padding-top:2em;">
							<ul>
								<li style="border-left:1.5px solid #b8b8b8;"><span>오늘의 총 문의 : </span><strong>120개 </strong></li>
								<li style="border-left:1.5px solid #b8b8b8;"><span>새로운 문의 : </span><strong>36개 </strong></li>
								<li style="border-left:1.5px solid #b8b8b8;"><span>기다리는 문의 : </span><strong>14개</strong></li>
							</ul>
						</div>
					</div>
					<div class="Advertising">
						<div class="col-div-100-20 divMainbox">
							<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 공고</h2>
						</div>
						<div class="col-div-35-80" style="padding-top:1em;">
							<img alt="" src="<c:url value='/icon/user.png'/>">
						</div>
						<div class="col-div-65-80" style="padding-top:2em;">
							<ul>
								<li style="border-left:1.5px solid #b8b8b8;"><span>총 공고 수 : </span><strong>1,400 개</strong></li>
								<li style="border-left:1.5px solid #b8b8b8; padding-top:0.6em;"><span>새로 등록된 공고 : </span><strong>14 개</strong></li>
							</ul>
						</div>
					</div>
				</div>
				</div>
</body>
</html>