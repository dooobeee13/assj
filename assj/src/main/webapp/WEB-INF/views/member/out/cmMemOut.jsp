<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>기업회원 탈퇴</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />

<style type="text/css">
	#cmMemOut fieldset{
		width:720px;
		margin:0 auto;	
		padding:20px;
		background-color:#ffff;
	}
	#cmMemOut #btnDiv{
		text-align:center;
	}
	#cmMemOut #btnDiv .btn{
		width:160px;
	}	
	#cmMemOut span{
		color:#ff4800;
	}
	#cmMemOut .gr{
		color:green;
	}
	#cmMemOut .well{
		background-color:#dde6f7;
		padding:30px;
	}
	#cmMemOut table{
		border-collapse: collapse;
	}
	
	#cmMemOut h1{
		font-weight:bold;
	}
	#cmMemOut .titleTD{
		width:180px;
	}



	 /* 사이드바 스타일 */
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
	<body>
		<c:import url="../../index/top.jsp" />
		<!-- 사이드바 -->
		<div id="page-wrapper">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h1><b>고객센터</b></h1></li>
				<hr>
				<li><h5><b>무엇을 도와드릴까요?</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>공지사항</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>Q&A</a></li>
				<li><a href="<c:url value='/member/menu/onenone.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>이메일 문의</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>아이디.비밀번호 찾기</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>개인회원서비스</b></h5></li>
				<li><a href="<c:url value='/member/menu/psService.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>개인회원 안내</a></li>
				<li><a href="<c:url value='/member/out/psMemOut.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>개인회원 탈퇴</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>기업회원서비스</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>채용광고 안내</a></li>
				<li><a href="<c:url value='/member/out/cmMemOut.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>기업회원 탈퇴</a></li>
			</ul>
		</div>
	</div>
		<!-- /사이드바 -->
		<div class="container">
			<div id="cmMemOut">
			<fieldset>
				<h1>기업회원 탈퇴</h1>
				<br>
				<hr>
				<br>
				<div class="well well-lg">
					<h2>서비스 이용에 불편한 점이 있으신가요?</h2>
					<b><span class="glyphicon glyphicon-phone-alt"> </span>&nbsp;고객센터로 문의주시면 최선을 다해 도와드리겠습니다.</b><br><br><br>
					<div id="btnDiv">
						<button type="button" class="btn btn-primary btn-sm">고객센터 문의 바로가기</button>
						<a href="<c:url value='/member/menu/onenone.do'/>"><button type="button" class="btn btn-primary btn-sm" id="onenone">1:1 상담문의 바로가기</button></a>
					</div>
				</div>
				<br><br>
				<div class="well well-lg">
					<h3>지금 사람인 회원을 탈퇴하시면,</h3>
					<br><br>
					<P><span class="gr">* 그동안 진행했던 채용 이력이 모두 삭제됩니다.</span><br>
					  &nbsp;&nbsp;탈퇴를 하시면 진행했던 채용이력이 모두 삭제되며, 삭제된 데이터는 복구가 불가능합니다.<br>
					  &nbsp;&nbsp;나중에 다시 채용을 진행하실때, 모든 정보를 처음부터 다시 입력해야하는 번거로움이 있습니다.</P>
					<P><span class="gr">* 귀사에 지원한 지원자들 관리가 불가능해 집니다.</span><br>
					  &nbsp;&nbsp;진행 중인 공고 뿐만 아니라 마감된 공고의 지원자까지 관리할 수 있는 ‘지원자 관리’ 서비스는<br>
					  &nbsp;&nbsp;사람인 회원에게만 제공됩니다.<br>
					  &nbsp;&nbsp;지원자들의 이력서, 포트폴리오 등의 자료가 삭제되어 나중에 다시 보실 수 없게 됩니다.</P>
					<P><span class="gr">* 보유하고 있으신 인재정보 열람 상품 건수가 모두 소멸됩니다.</span><br>
					  &nbsp;&nbsp;탈퇴를 하시면, 보유하고 있으신 인재정보 열람 상품 건수가 모두 소멸됩니다.<br>
					  &nbsp;&nbsp;또, 마음에 쏙 드는 인재를 발견하셔도 비공개된 연락처를 보실 수 없게 됩니다.</P>
					<P><span class="gr">* 결제시마다 쌓아오신 S-포인트와 발행해드린 쿠폰이 모두 소멸됩니다.</span><br>
					  &nbsp;&nbsp;탈퇴를 하시면, 유료서비스 결제시 할인을 받으실 수 있는 S-포인트 전액과 쿠폰이 모두 소멸됩니다.<br>
					  &nbsp;&nbsp;같은 아이디로 재가입을 하셔도 내역은 이관되지 않습니다.</P>
					<P><span class="gr">* 보유하고 있으신 문자(SMS) 건수가 모두 소멸됩니다.</span><br>
					  &nbsp;&nbsp;탈퇴를 하시면, 보유하고 있으신 문자(SMS) 건수가 모두 소멸됩니다.<br>
					  &nbsp;&nbsp;뿐만 아니라, 사람인을 통해 발송된 문자(SMS) 내역도 더 이상 보실 수 없습니다.</P>
				</div>
				<br><br>
				<table class="table table-bordered">
					<tr><th colspan='3'><h4>&nbsp;&nbsp;<b>탈퇴이외에 이런 방법을 추천해드립니다.</b></h4></th></tr>
					<tr>
					 	<td class="titleTD">스팸처럼 느껴지는<br>알림 메일<br><span><b>→ 수신안함 설정</b></span></td>
					 	<td>사람인의 이벤트, 교육정보 등의 메일이 스팸메일로 느껴지시나요?<br>
							그렇다면, 알림메일 설정을 '수신안함'으로 변경해주세요.</td>
					 	<td><button type="button" class="btn btn-primary">메일 수신설정<br>바로가기</button></td>
					</tr>
					<tr>
						<td class="titleTD">채용 완료했는데도<br>계속 들어오는 이력서<br><span><b>→ 채용공고 마감</b></span></td>
						<td>인재를 채용했는데도 이력서가 계속 들어온다면,<br>등록된 채용정보를 마감으로 변경해주세요.</td>
						<td><button type="button" class="btn btn-primary">채용정보 관리<br>바로가기</button></td>
					</tr>
					<tr>
						<td class="titleTD">기업에서 개인으로<br>아이디 변경 <br><span><b>→ 탈퇴보다는 재가입</b></span></td>
						<td>기업회원으로 가입했는데, 개인회원 아이디로 변경하고 싶으시다고요?<br>
							탈퇴없이 개인회원으로 재가입하시면 모든 서비스를 바로 이용하실 수<br>있습니다.</td>
						<td><button type="button" class="btn btn-primary">개인회원 가입<br>바로가기</button></td>
					</tr>
					<tr>
						<td class="titleTD">복잡한 채용정보 입력 <br><span><b>→ 필수 항목만 작성하기</b></span></td>
						<td>채용정보에 입력할 항목이 너무 많아 복잡하게 느껴지셨나요?<br>
							선택항목을 '작성안함(비공개)'로 바꾸시면 채용정보를 간편하게 등록하실수 있습니다.</td>
						<td><button type="button" class="btn btn-primary">채용정보 등록<br>바로가기</button></td>
					</tr>					
				</table><br><br>
				<div id="btnDiv">
					<a href="<c:url value='/member/out/cmMemOut2.do'/>"><button type="button" class="btn btn-primary btn-lg">탈퇴하기</button></a>
					<button type="button" class="btn btn-default btn-lg">취소</button>
				</div>
				<br><br><br><br>
			</fieldset>
			</div>
		</div>
		<c:import url="../../index/footer.jsp" />
	</body>
</html>