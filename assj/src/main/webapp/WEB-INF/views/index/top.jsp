<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	$(function(){
		$('.searchjob').hover(function(){
			$('.searchCategory').show();
		},function(){
			$('.searchCategory').hide();
		})
	})
</script>	
<header>
	<div class="topline">
		<a href="">로그인</a> <a href="">회원가입</a>
		<div class="clearfix"></div>
	</div>
	<div class="searchline container-fluid">
		<div class="row">
			<div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
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
				<li class="searchjob"><a href="#">전체 채용정보</a>

					<div class="row searchCategory"
						style="position: absolute; z-index: 1; background: #fff; width: 600px">
						<div class="panel panel-default col-md-4">
							<div class="panel-heading">지역별</div>
							<div class="panel-body">
								<span>서울</span> <span>경기</span> <span>인천</span> <span>부산</span>
								<span>대구</span> <span>대전</span> <span>광주</span> <span>울산</span>
								<span>강원</span> <span>경남</span> <span>경북</span> <span>전남</span>
								<span>전북</span> <span>충남</span> <span>충북</span> <span>제주</span>
								<span>세종</span>
							</div>
						</div>
						<div class="panel panel-default col-md-4">
							<div class="panel-heading">직업별(직종)</div>
							<div class="panel-body">
								<span>경영·사무</span> <span>생산·제조</span> <span>건설</span> <span>영업·고객상담</span>
								<span>IT·인터넷</span> <span>유통·무역</span> <span>디자인</span> <span>미디어</span>
								<span>서비스</span> <span>교육</span> <span>의료</span> <span>전문직</span>
								<span>특수계층·공공</span>
							</div>
						</div>
						<div class="panel panel-default col-md-4">
							<div class="panel-heading">기업별</div>
							<div class="panel-body">
								<span>대기업</span> <span>외국계 기업</span> <span>공사·공기업·공공기관</span> <span>상장기업</span>
								<span>강소·인증기업</span>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="panel panel-default col-md-4">
							<div class="panel-heading">전공별</div>
							<div class="panel-body">
								<span>기계공학</span> <span>전기공학</span> <span>건축토목</span> <span>재료금속</span>
								<span>산업공학</span> <span>법학상경</span> <span>어문학</span> <span>화학공학</span>
								<span>생명공학</span> <span>디자인</span> <span>컴퓨터공학</span> <span>전공무관</span>
							</div>
						</div>
						<div class="panel panel-default col-md-4">
							<div class="panel-heading">산업별(업종)</div>
							<div class="panel-body">
								<span>제조·화학</span> <span>서비스업</span> <span>은행·금융업</span> <span>IT·통신</span>
								<span>미디어</span> <span>의료·제약·복지</span> <span>건설업</span> <span>판매·유통</span>
								<span>교육업</span> <span>기관·협회</span>
							</div>
						</div>
						<div class="panel panel-default col-md-4">
							<div class="panel-heading">학력별</div>
							<div class="panel-body">
								<span>고졸채용</span> <span>2·3년제 채용</span> <span>4년제졸업</span> <span>석박사채용</span>
								<span>대구</span> <span>대전</span> <span>광주</span> <span>울산</span>
							</div>
						</div>


					</div></li>
				<li><a href="#">직업별</a></li>
				<li><a href="#">지역별</a></li>
				<li><a href="#">menu1</a></li>
				<li><a href="#">menu2</a></li>
				<li><a href="#">menu3</a></li>
			</ul>
		</div>
	</div>
</nav>