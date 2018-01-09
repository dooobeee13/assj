<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	$(document).ready(function(){
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
 		
 		$('#myModal1').on('hide.bs.modal', function (e) {
			$('#myModal1 .redDiv').html("");
			$('#myModal1 #pwd').val("");
		});
 	});
//모달쪽
</script>
<style type="text/css">	
	.container fieldset{
		width:70%;
		padding:80px;
		background-color:#ffff;
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
			<div class="col-div-100-20">
			<div class="container">
			<fieldset>
			<form role="form" class="form-inline" method="post" action="<c:url value='/member/menu/adminQnaReply.do'/>" onsubmit="return send(this)">	
					<input type="hidden" name="groupNo" value="${vo.groupNo}">
					<input type="hidden" name="sortNo" value="${vo.sortNo}">
					<input type="hidden" name="step" value="${vo.step}">
							
				<h1>Q&A 글쓰기</h1>
				<hr>	
					<div class="form-group">
						<label for="name">이름</label> &nbsp;&nbsp;
						<input type="text" class="form-control" id="name" name="name" size="28" value="관리자" readonly="readonly">
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<label for="pwd">비밀번호</label>&nbsp;&nbsp;
						<input type="password" class="form-control" id="pwd" name="pwd" size="14">
					</div>
					<div class="form-group">
						<label for="title">제목</label>&nbsp;&nbsp;   
						<input type="text" class="form-control" name="title" id="title" size="73"
						value="RE: ${vo.title }">
					</div>	
					<div class="form-group">
						<label for="content">내용</label>&nbsp;&nbsp;  
						<textarea rows="12" class="form-control" cols="75" id="content" name="content"></textarea>
					</div>
				<br>
				<br>
				<hr>
				<div id="btnDiv">
					<button type="submit" class="btn btn-default btn-sm" id="okBtn" style="background-color:#607D8B; color:#ffff">등록</button>&nbsp;
					<a href="<c:url value='/member/menu/adminQna.do'/>"><button type="button" class="btn btn-default btn-sm" id="cancleBtn">목록</button></a><br>
				</div>
			</form>
		</fieldset>
		</div>
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
		
</body>
</html>