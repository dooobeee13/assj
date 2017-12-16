<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>1:1상담문의</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#cancel').click(function(){
			location.href="edit3.jsp";
		});
	});
</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	h1{
		font-weight:bold;
	}
	fieldset {
		width:720px;
		margin:0 auto;	
		padding:20px;
		background-color:#ffff;
	}
	label{
		width:134px;
	}
	.titleTD{
		width:130px;
	}
	#btnDiv{
   		text-align:center;
   	}
   	

   	 #page-wrapper {
    padding-left: 380px;
  }
  
  #sidebar-wrapper {
    position:absolute;
    width: 190px;
    height: 63%;
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  /* 사이드바 스타일 */
  
  .sidebar-nav {
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 0.8em;
    line-height: 2.2em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999;
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
	<body>
		<c:import url="../../index/top.jsp" />
		<div id="page-wrapper">
		<!-- 사이드바 -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h1><b>고객센터</b></h1></li>
				<hr>
				<li><h5><b>무엇을 도와드릴까요?</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>공지사항</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>도움말</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>Q&A</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>이메일 문의</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>아이디.비밀번호 찾기</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>개인회원 탈퇴</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>개인회원서비스</b></h5></li>
				<li><a href="<c:url value='/member/menu/psService.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>개인회원 안내</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>기업회원서비스</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>채용광고 상품 안내</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>S-포인트 안내 </a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>SIAT 인적성검사 상품 </a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>기업회원 탈퇴</a></li>
			</ul>
		</div>
	</div>
		<!-- /사이드바 -->
		
		<!-- 본문 -->
		<div class="container">
			<fieldset>
			
				<h1>이메일 문의</h1>
				<br>
				<hr>
				<br>
				<br>
				※ 평일 17시 이전에 보내주신 문의는 당일 답변을 원칙으로 합니다.<br>
				&nbsp;&nbsp;그 외 시간에 문의하신 내용은 다음 근무시간에 답변해드리겠습니다.<br>
				&nbsp;&nbsp;(평일 17시 이후 : 다음날 / 주말 : 다음주 월요일)<br>
				<br>
				<form role="form" class="form-inline">
					<table class="table table-bordered">
						<tr>
							<td class="titleTD">제목</td>
							<td><input type="text" class="form-control" size="76"></td>
						</tr>
						<tr>
							<td class="titleTD">분류</td>
							<td>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 이력서 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label><br>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 이력서 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label><br><label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 이력서 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label>
							<label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 입사지원 문의
							</label><br>
							</td>
						</tr>
						<tr>
							<td class="titleTD">내용</td>
							<td><textarea rows="10" cols="80"></textarea></td>
						</tr>
					</table>
					<div class="well well-lg">
						- 수집 항목 : 이름, 이메일 주소<br>
						- 수집 목적 : 문의에 따른 원활한 상담 제공<br>
						- 보유 기간 : 문의처리 후 1년간 보관
					</div><br>
					&nbsp;&nbsp;<input type="checkbox" id="CpCheckbox5" value="option1">&nbsp;&nbsp;위 ‘개인정보 수집 및 이용’ 에 동의합니다.
					<br><br><br>
				</form>	
					<div id="btnDiv">
					   		<button id="personal" type="button" class="btn btn-primary btn-lg">보내기</button>
							<button id="company" type="button" class="btn btn-default btn-lg" id="cancel">취소</button>
				   	</div>
			</fieldset>	
		</div>
		<c:import url="../../index/footer.jsp" />    
	</body>
</html>