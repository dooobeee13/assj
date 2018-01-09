<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(function(){
		$('.searchjob').hover(function(){
			$(this).find('.searchCategory').show(); 
			//$('.searchCategory').show();
		},function(){
			$(this).find('.searchCategory').hide();
			//$('.searchCategory').hide();
		})
	});
</script>

<style>
@media ( min-width :992px) {
	.top header .topline a {
		float: right;
		padding: 10px 20px;
	}
	.top header .padding-0 {
		padding: 0;
	}
}

.top header .topline{
	padding:15px;
}

.top header .searchline {
	margin: 20px 0;
}

.top header .searchline .btn {
	background: #2e6da4;
	color: #fff;
	border: 2px solid #2e6da4;
}

.top header .searchline input {
	border: 2px solid #2e6da4;
}

.top .navbar-default {
	background-color: #2e6da4;
	border-top: 3px solid #2e6da4;
}

.top .navbar-default .navbar-nav>li>a {
	color: #fff;
	font-size: 15px;
	font-family: "맑은 고딕", "Malgun Gothic", 굴림, Gulim, sans-serif;
	font-weight: 400;
}

.top .navbar-default .navbar-nav>li>a:hover {
	color: #2e6da4;
	background-color: #fff;
}

.top .navbar-default .navbar-nav>.active>a, 
.top .navbar-default .navbar-nav>.active>a:focus,
.top .navbar-default .navbar-nav>.active>a:hover {
	color: #2e6da4;
	background-color: #fff;
}

.top .searchCategory {
	display: none;
	border: 2px solid #2e6da4;
	left: 13px;
}

.top .searchCategory .panel.total {
	height: 195px;
	margin-bottom: 0;
}

.top .searchCategory .panel-default>.panel-heading {
	background-color: #fff;
}

.top .searchCategory .panel-body span:before {
	content: '';
	padding-right: 1px;
}

.top .searchCategory .panel-body span:after {
	content: '';
	padding-left: 1px;
}

.top .navbar-collapse .searchjob{
	width:128px;
	text-align:center;	
}
</style>
<div class="top">	
	<header>
		<div class="topline">
			<c:if test="${empty sessionScope.memberVO && empty sessionScope.cmMemberVO.cmId}">
				<a href="<c:url value='/member/menu/serviceCenter.do'/>"><b>고객센터</b></a> 
				<a href="<c:url value='/member/register/register.do'/>"><b>회원가입</b></a> 
				<a href="<c:url value='/member/login/psMemLogin.do'/>"><b>로그인</b></a>
			</c:if>
			<!-- 개인회원 로그인후 -->
			<c:if test="${!empty sessionScope.memberVO}">
				<a href="<c:url value='/member/menu/serviceCenter.do'/>"><b>고객센터</b></a>
				<a href="<c:url value='/member/out/psMemOut.do'/>"><b>회원탈퇴</b></a>								
				<a href="<c:url value='/member/edit/psMemEdit.do'/>"><b>회원정보수정</b></a>
				<a href="<c:url value='/logout.do'/>"><b>로그아웃</b></a>
			</c:if>
			<!-- 기업회원 로그인후-->
			<c:if test="${!empty sessionScope.cmMemberVO.cmId}">
				<a href="<c:url value='/member/menu/serviceCenter.do'/>"><b>고객센터</b></a>
				<a href="<c:url value='/member/out/cmMemOut.do'/>"><b>회원탈퇴</b></a>						
				<a href="<c:url value='/member/edit/cmMemEdit.do'/>"><b>회원정보수정</b></a>
				<a href="<c:url value='/logout2.do'/>"><b>로그아웃</b></a>
			</c:if>
	
		<div class="clearfix"></div>
		</div>
		<div class="searchline container-fluid">
			<div class="row">
				<div class="col-md-2 col-md-offset-3">
					<a href="<c:url value='/index.do' />">
						<img class="img-responsive" src="<c:url value='/images/assj_logo2.png' />" alt="임시 로고">
					</a>
				</div>
				<!-- <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3"> -->
				<div class="col-md-4 col-sm-6">
					<div class="input-group input-group-lg">
						<input type="text" class="form-control" placeholder="검색어 입력">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
	
			<div class="collapse navbar-collapse" id="navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="searchjob"><a href='<c:url value="/hireInfo/home.do" />'>전체 채용정보</a>
	
						<div class="row searchCategory"
							style="position: absolute; z-index: 1; background: #fff; width: 600px">
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">지역별</div>
								<div class="panel-body">
									<span>서울</span> <span>경기</span> <span>인천</span> <span>부산</span>
									<span>대구</span> <span>대전</span> <span>광주</span> <span>울산</span>
									<span>강원</span> <span>경남</span> <span>경북</span> <span>전남</span>
									<span>전북</span> <span>충남</span> <span>충북</span> <span>제주</span>
									<span>세종</span>
								</div>
							</div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">직업별(직종)</div>
								<div class="panel-body">
									<span>경영·사무</span> <span>생산·제조</span> <span>건설</span> <span>영업·고객상담</span>
									<span>IT·인터넷</span> <span>유통·무역</span> <span>디자인</span> <span>미디어</span>
									<span>서비스</span> <span>교육</span> <span>의료</span> <span>전문직</span>
									<span>특수계층·공공</span>
								</div>
							</div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">기업별</div>
								<div class="panel-body">
									<span>대기업</span> <span>외국계 기업</span> <span>공사·공기업·공공기관</span> <span>상장기업</span>
									<span>강소·인증기업</span>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">전공별</div>
								<div class="panel-body">
									<span>기계공학</span> <span>전기공학</span> <span>건축토목</span> <span>재료금속</span>
									<span>산업공학</span> <span>법학상경</span> <span>어문학</span> <span>화학공학</span>
									<span>생명공학</span> <span>디자인</span> <span>컴퓨터공학</span> <span>전공무관</span>
								</div>
							</div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">산업별(업종)</div>
								<div class="panel-body">
									<span>제조·화학</span> <span>서비스업</span> <span>은행·금융업</span> <span>IT·통신</span>
									<span>미디어</span> <span>의료·제약·복지</span> <span>건설업</span> <span>판매·유통</span>
									<span>교육업</span> <span>기관·협회</span>
								</div>
							</div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">학력별</div>
								<div class="panel-body">
									<span>고졸채용</span> <span>2·3년제 채용</span> <span>4년제졸업</span> <span>석박사채용</span>
									<span>대구</span> <span>대전</span> <span>광주</span> <span>울산</span>
								</div>
							</div>
	
	
						</div>
					</li>
					<li class="searchjob"><a href="#">직업별</a>
						<c:import url="/index/navOccuCategory.do" />
					</li>
					<li class="searchjob"><a href="#">지역별</a>
						<c:import url="/index/navAreaCategory.do" />
					</li>
					<li class="searchjob"><a href="<c:url value='/TalentManagement/final-main.do'/>">인재검색</a></li>
					<li class="searchjob"><a href="<c:url value='/newsInfo/newsmain.do'/>">공채 뉴스</a></li>
					<li class="searchjob"><a href="<c:url value='/board/freeBoardList.do'/>">자유게시판</a></li>
					<c:if test="${!empty sessionScope.cmMemberVO.cmId}">
					<li class="searchjob"><a href='<c:url value="/hire_noti/hire1.do" />'>공고등록</a></li>
					</c:if>
					<!-- 
					<li class="searchjob"><a href="#">구상중</a></li> -->
				</ul>
			</div>
		</div>
	</nav>
</div>