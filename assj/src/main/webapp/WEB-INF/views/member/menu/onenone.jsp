<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>1:1상담문의</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#sendBtn').click(function(){
			if($('#id').val()==null){
				alert('로그인후에 문의주세요');
				return false;
			}else if($('#email').val()==""){
				alert('개인정보에서 이메일을 입력해주세요');
				return false;
			}else if($('#title').val()==""){
				alert('제목을 입력해주세요');
				return false;
			}else if($('input:radio[name=questionNo]:checked').val()== undefined){
				alert('분류를 지정해주세요');
				return false;
			}else if($('#content').val()==""){
				alert('내용을 입력해주세요');
				return false;
			}else if(!($('#emailCheckbox').is(':checked'))){
				alert('약관을 동의해주세요');
				return false;
			}
				
		});
	});
</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	.row h1 {
		font-weight: bold;
	}
	
	.row fieldset {
		padding: 40px;
		background-color: #ffff;
	}
	
	.row label {
		width: 165px;
		margin: 10px;
	}
	
	.row .titleTD {
		width: 130px;
	}
	
	.row #btnDiv {
		text-align: center;
	}
	
	.row form {
		background-color: #dce8ff;
	}
	.row .well {
		width: 95%;
		margin: 0 auto;
	}
	.row #email td,th{
		padding:20px;
	}
	.row #comments,#divide{
		vertical-align:top;
	}
	
	.row h1 img{
		vertical-align: bottom;
		width:50px;
	}
	
  /* 사이드바 스타일 */
  #sidebar-wrapper {
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 1110px;
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
				<h1><img alt="noticeImg" src="<c:url value='/images/email.png'/>">&nbsp;이메일 문의</h1>
				<hr>
				<br>
				<h4>※ 평일 17시 이전에 보내주신 문의는 당일 답변을 원칙으로 합니다.<br> 
				&nbsp;&nbsp;&nbsp;&nbsp;그 외 시간에 문의하신 내용은 다음 근무시간에 답변해드리겠습니다.<br> 
				&nbsp;&nbsp;&nbsp;&nbsp;(평일 17시 이후 : 다음날 /주말 : 다음주 월요일)</h4><br><br>
				<form role="form" class="form-inline" method="post" action="<c:url value='/member/menu/onenone.do'/>">
					<c:if test="${!empty vo.memId}">
						<input type="hidden" name="id" id="id" value="${vo.memId}">
						<input type="hidden" name="email" id="email" value="${vo.memEmail}">
					</c:if>
					<c:if test="${!empty cmVo.cmId}">
						<input type="hidden" name="id" id="id" value="${cmVo.cmId}">
						<input type="hidden" name="email" id="email" value="${cmVo.cmEmail}">
					</c:if>		
					<table id="email">
						<tr>
							<td class="titleTD">제목</td>
							<td><input type="text" class="form-control" size="75" name="title" id="title"></td>
						</tr>
						<tr>
							<td class="titleTD" id="divide">분류</td>
							<td><label class="radio-inline"> <input type="radio"
									name="questionNo" value="1">
									이력서 문의
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="2">
									입사지원 문의
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="3">
									검색 문의
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="4">
									신고(불량기업/공고 등)
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="5">
									회원가입/탈퇴/ID/PW
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="6">
									공고 문의
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="7">
									지원자관리 문의
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="8">
									이메일/알림 문의
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="9">
									결제/유료 상품 문의
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="10">
									제안사항
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="11">
									연봉정보 수정요청
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="12">
									SIAT 인적성검사 문의
							</label> <label class="radio-inline"> <input type="radio"
									name="questionNo" value="13"> 기타
							</label></td>
						</tr>
						<tr>
							<td class="titleTD" id="comments">내용</td>
							<td><textarea class="form-control" rows="10" cols="78" name="content" id="content"></textarea></td>
						</tr>
					</table>
					<div class="well well-lg">
						- 수집 항목 : 이름, 이메일 주소<br> - 수집 목적 : 문의에 따른 원활한 상담 제공<br>
						- 보유 기간 : 문의처리 후 1년간 보관
					</div>
					<br> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="emailCheckbox">&nbsp;위 ‘개인정보 수집 및 이용’ 에 동의합니다. <br>
					<br>
					<br>
				<br>
				<div id="btnDiv">
					<button type="submit" class="btn btn-primary btn-lg" id="sendBtn">보내기</button>
					<a href="<c:url value='/index.do'/>"><button type="button" class="btn btn-default btn-lg" id="cancelBtn">취소</button></a>
				</div>
				</form>
			</fieldset>
		</div>
		</div>
	</div>
	<c:import url="../../index/footer.jsp" />
</body>
</html>