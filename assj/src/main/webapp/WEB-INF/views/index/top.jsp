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

.top .searchCategory .panel-body {
	padding: 15px 0;
}

.top .searchCategory .panel-body span {
	float: left;
}

.top .searchCategory .panel-body span a {
	color: black;
}

.top .searchCategory .panel-body span:before {
	content: '';
	padding-right: 6px;
}

.top .searchCategory .panel-body span:after {
	content: '';
	padding-left: 6px;
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
						<img class="img-responsive" src="<c:url value='/images/assj_logo2.png' />" alt="알쓸신잡 로고">
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
									<span><a href="/assj//hireInfo/home.do?type=area&val=1">서울</a></span> <span><a href="/assj//hireInfo/home.do?type=area&val=2">경기</a></span>
									<span><a href="/assj//hireInfo/home.do?type=area&val=3">인천</a></span> <span><a href="/assj//hireInfo/home.do?type=area&val=4">부산</a></span>
									<span><a href="/assj//hireInfo/home.do?type=area&val=5">대구</a></span> <span><a href="/assj//hireInfo/home.do?type=area&val=7">대전</a></span>
									<span><a href="/assj//hireInfo/home.do?type=area&val=6">광주</a></span> <span><a href="/assj//hireInfo/home.do?type=area&val=8">울산</a></span>
									<span><a href="/assj//hireInfo/home.do?type=area&val=10">강원</a></span> <span><a href="/assj//hireInfo/home.do?type=area&val=11">경남</a></span>
								    <span><a href="/assj//hireInfo/home.do?type=area&val=12">경북</a></span> <span><a href="/assj//hireInfo/home.do?type=area&val=13">전남</a></span>
									<span><a href="/assj//hireInfo/home.do?type=area&val=14">전북</a></span> <span><a href="/assj//hireInfo/home.do?type=area&val=15">충남</a></span> 
									<span><a href="/assj//hireInfo/home.do?type=area&val=16">충북</a></span> <span><a href="/assj//hireInfo/home.do?type=area&val=17">제주</a></span>
									<span><a href="/assj//hireInfo/home.do?type=area&val=9">세종</a></span>
								</div>
							</div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">직업별(직종)</div>
								<div class="panel-body">
									<span><a href="/assj//hireInfo/home.do?type=topOccu&val=1">경영·사무</a></span> <span><a href="/assj//hireInfo/home.do?type=topOccu&val=8">생산·제조</a></span> 
									<span><a href="/assj//hireInfo/home.do?type=topOccu&val=9">건설</a></span> <span><a href="/assj//hireInfo/home.do?type=topOccu&val=2">영업·고객상담</a></span>
									<span><a href="/assj//hireInfo/home.do?type=topOccu&val=3">IT·인터넷</a></span> <span><a href="/assj//hireInfo/home.do?type=topOccu&val=10">유통·무역</a></span> 
									<span><a href="/assj//hireInfo/home.do?type=topOccu&val=4">디자인</a></span> <span><a href="/assj//hireInfo/home.do?type=topOccu&val=11">미디어</a></span>
									<span><a href="/assj//hireInfo/home.do?type=topOccu&val=5">서비스</a></span> <span><a href="/assj//hireInfo/home.do?type=topOccu&val=12">교육</a></span> 
									<span><a href="/assj//hireInfo/home.do?type=topOccu&val=7">의료</a></span> <span><a href="/assj//hireInfo/home.do?type=topOccu&val=6">전문직</a></span>
									<span><a href="/assj//hireInfo/home.do?type=topOccu&val=13">특수계층·공공</a></span>
								</div>
							</div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">기업별</div>
								<div class="panel-body">
									<span><a href="/assj//hireInfo/home.do?type=cs&val=1">대기업</a></span> <span><a href="/assj//hireInfo/home.do?type=cs&val=5">외국계 기업</a></span>
									<span><a href="/assj//hireInfo/home.do?type=cs&val=2">중견기업</a></span> <span><a href="/assj//hireInfo/home.do?type=cs&val=4">중소기업</a></span>
									<span><a href="/assj//hireInfo/home.do?type=cs&val=10">공사·공기업</a></span> <span><a href="/assj//hireInfo/home.do?type=cs&val=7">벤처</a></span>
									<span><a href="/assj//hireInfo/home.do?type=cs&val=3">강소기업</a></span><span><a href="/assj//hireInfo/home.do?type=cs&val=6">코스닥</a></span>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">전공별</div>
								<div class="panel-body">
									<span><a href="/assj//hireInfo/home.do?type=major&val=46">기계공학</a></span> <span><a href="/assj//hireInfo/home.do?type=major&val=41">전기공학</a></span> 
									<span><a href="/assj//hireInfo/home.do?type=major&val=43">건축토목</a></span> <span><a href="/assj//hireInfo/home.do?type=major&val=38">재료금속</a></span>
									<span><a href="/assj//hireInfo/home.do?type=major&val=45">산업공학</a></span> <span><a href="/assj//hireInfo/home.do?type=major&val=66">사범</a></span> 
									<span><a href="/assj//hireInfo/home.do?type=major&val=26">어문학</a></span> <span><a href="/assj//hireInfo/home.do?type=major&val=37">컴퓨터공학</a></span>
									<span><a href="/assj//hireInfo/home.do?type=major&val=40">화학공학</a></span> <span><a href="/assj//hireInfo/home.do?type=major&val=39">생명공학</a></span> 
									<span><a href="/assj//hireInfo/home.do?type=major&val=67">의학/약학</a></span> <span><a href="/assj//hireInfo/home.do?type=major&val=10">법학</a></span>
									<span><a href="/assj//hireInfo/home.do?type=major&val=52">경영</a></span> 
								</div>
							</div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">산업별(업종)</div>
								<div class="panel-body">
									<span><a href="/assj//hireInfo/home.do?type=topSec&val=3">제조·화학</a></span> <span><a href="/assj//hireInfo/home.do?type=topSec&val=1">서비스업</a></span>
									<span><a href="/assj//hireInfo/home.do?type=topSec&val=9">은행·금융업</a></span> <span><a href="/assj//hireInfo/home.do?type=topSec&val=5">IT·통신·웹</a></span>
									<span><a href="/assj//hireInfo/home.do?type=topSec&val=6">건설업</a></span><span><a href="/assj//hireInfo/home.do?type=topSec&val=2">의료·제약·복지</a></span>
									<span><a href="/assj//hireInfo/home.do?type=topSec&val=8">미디어·디자인</a></span><span><a href="/assj//hireInfo/home.do?type=topSec&val=7">교육업</a></span>
									<span><a href="/assj//hireInfo/home.do?type=topSec&val=4">판매·유통</a></span>
									<span><a href="/assj//hireInfo/home.do?type=topSec&val=10">기관·협회</a></span>
								</div>
							</div>
							<div class="panel panel-default col-md-4 total">
								<div class="panel-heading">학력별</div>
								<div class="panel-body">
									<span><a href="/assj//hireInfo/home.do?type=edu&val=1">고졸채용</a></span> <span><a href="/assj//hireInfo/home.do?type=edu&val=2">2·3년제 채용</a></span> 
									<span><a href="/assj//hireInfo/home.do?type=edu&val=3">4년제졸업</a></span> <span><a href="/assj//hireInfo/home.do?type=edu&val=4">석사채용</a></span>
									<span><a href="/assj//hireInfo/home.do?type=edu&val=5">박사채용</a></span>
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