<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

	@media (min-width: 992px) {
		.topline a {
			float: right;
			padding: 10px 20px;
		}
		
		.padding-0 {
			padding: 0;
		}
	}
	
	.searchline {
			margin: 20px 0;
	}
	
	.searchline .btn{
		background: #2e6da4;
		color: #fff;
		border: 2px solid #2e6da4;
	}
	
	.searchline input {
		border: 2px solid #2e6da4;
	}
	
	.login-form {
		padding: 10px;
	}
	
	.login-form .input-group-sm {
		margin-bottom: 5px;
	}
	
	.login-form .checkbox {
		color: gray;
	}
	
	.nav .active {
		font-weight: bold;
	}
	
	.media-left img {
		width: 54px;
	}
	
	.media {
		border-bottom: 1px solid lightgray;
	}
	
	.tags {
	    color: #999;
	    font-size: 12px;
	    display: inline-block;
	    text-decoration: none;
	    padding-bottom: 4px;
    }
    
    .tags:nth-child(2):before {
	    content: '';
	    padding-right: 0px;
    }
    
    .tags:before {
	    content: '\b7\a0';
	    padding-right: 1px;
    }

	.conten {
		background: #fff;
		border-radius: 5px
	}
	
	.media-heading {
		font-size: 16px;
	}
	
	.media-heading a {
		color: #333;
		font-weight: bold;
	}
	
	.media-body .glyphicon {
		color: #999;
		font-size: 12px;
	}
	
	footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    .navbar-default {
    	background-color: #2e6da4;
    	border-top: 3px solid #2e6da4;
    }
    
    .navbar-default .navbar-nav>li>a {
    	color: #fff;
    	font-size: 15px;
    	font-family: "맑은 고딕", "Malgun Gothic", 굴림, Gulim, sans-serif;
    	font-weight: 400;
	}
	
    .navbar-default .navbar-nav>li>a:hover {
    	color: #2e6da4;
    	background-color: #fff;	
	}
	
	.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus, .navbar-default .navbar-nav>.active>a:hover {
    	color: #2e6da4;
   	 	background-color: #fff;	
    }
    
    .panel-default>.panel-heading {
    	background-color: #fff;
    }
    
    .panel-body span:before {
    	content: '';
	    padding-right: 1px;
    }
    .panel-body span:after {
    	content: '';
	    padding-left: 1px;
    }
    
    .searchCategory .panel {
    	height: 195px;
    	margin-bottom: 0;
    }
    
    .searchCategory {
    	display: none;
    	border: 2px solid #2e6da4;
    	left: 14px;
    }
</style>
<script>
	$(function(){
		$('.searchjob').hover(function(){
			$('.searchCategory').show();
		},function(){
			$('.searchCategory').hide();
		})
	})
</script>
</head>
<body style="background:#ebecee">
	<header>
		<div class="topline">
			<a href="">로그인</a>
			<a href="">회원가입</a>
			<div class="clearfix"></div>
		</div>
		<div class="searchline container-fluid">
			<div class="row">
				<div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
					<div class="input-group input-group-lg">
						<input type="text" class="form-control"
							placeholder="검색어 입력"> <span
							class="input-group-btn">
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
			<ul class="nav navbar-nav">
				<li class="searchjob"><a href="#">전체 채용정보</a>

					<div class="row searchCategory" style="position: absolute; z-index:1; background:#fff; width: 600px">
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
								<span>고졸채용</span> <span>2·3년제 채용</span> <span>석박사채용</span> <span>부산</span>
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
	</nav>
	
	<section class="container">
		<div class="row">
			<div class="col-md-7">
				<div class="conten" style="padding:10px">
				
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/327158/thumb_KakaoTalk_20171101_180550094.jpg" class="media-object">
							</a>
						</div>
						
						<div class="media-body">
							<div class="media-heading"><a href="#">광고 기획자에 도전하실 분 모십니다! (신입)</a> &nbsp;<span class="label label-warning">D-20 (채용시 마감)</span></div>
							<div>(주)이루다웍스</div>
							<div>
								<span class="glyphicon glyphicon-tags" aria-hidden="true"></span>&nbsp; 
								<span class="tags">서울</span> 
								<span class="tags">마케팅</span> 
								<span class="tags">전략마케팅</span> 
								<span class="tags">광고기획/카피라이터</span> 
								<span class="tags">중소기업</span> 
								<span class="tags">신입</span>
							</div>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/89723/thumb_______.png" class="media-object">
							</a>
						</div>
						
						<div class="media-body">
							<div class="media-heading"><a href="#">회계 담당자</a> &nbsp;<span class="label label-warning">D-35 (채용시 마감)</span></div>
							<div>라이엇게임즈코리아</div>
							<div>
								<span class="glyphicon glyphicon-tags" aria-hidden="true"></span>&nbsp;  
								<span class="tags">서울</span> 
								<span class="tags">회계사</span> 
								<span class="tags">외국계 (외국 법인기업)</span> 
								<span class="tags">경력</span>
							</div>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/327158/thumb_KakaoTalk_20171101_180550094.jpg" class="media-object">
							</a>
						</div>
						
						<div class="media-body">
							<div class="media-heading"><a href="#">광고 기획자에 도전하실 분 모십니다! (신입)</a> &nbsp;<span class="label label-warning">D-20 (채용시 마감)</span></div>
							<div>(주)이루다웍스</div>
							<div>
								<span class="glyphicon glyphicon-tags" aria-hidden="true"></span>&nbsp; 
								<span class="tags">서울</span> 
								<span class="tags">마케팅</span> 
								<span class="tags">전략마케팅</span> 
								<span class="tags">광고기획/카피라이터</span> 
								<span class="tags">중소기업</span> 
								<span class="tags">신입</span>
							</div>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img src="https://jpassets.jobplanet.co.kr/production/uploads/company/logo/89723/thumb_______.png" class="media-object">
							</a>
						</div>
						
						<div class="media-body">
							<div class="media-heading"><a href="#">회계 담당자</a> &nbsp;<span class="label label-warning">D-35 (채용시 마감)</span></div>
							<div>라이엇게임즈코리아</div>
							<div>
								<span class="glyphicon glyphicon-tags" aria-hidden="true"></span>&nbsp;  
								<span class="tags">서울</span> 
								<span class="tags">회계사</span> 
								<span class="tags">외국계 (외국 법인기업)</span> 
								<span class="tags">경력</span>
							</div>
						</div>
					</div>
				
				</div>
			</div>
			<div class="col-md-2 padding-0">
				<div class="conten">

					<div class="panel panel-default">
						<div class="panel-heading">실시간 검색 기업</div>

						<!-- <ul class="list-group">
							<li class="list-group-item">한국금융투자협회</li>
							<li class="list-group-item">유니온</li>
							<li class="list-group-item">메덱스</li>
							<li class="list-group-item">보고테크</li>
							<li class="list-group-item">켐리치</li>
						</ul> -->
						<div class="panel-body">
							<div>한국금융투자협회</div>
							<div>유니온</div>
							<div>메덱스</div>
							<div>보고테크</div>
							<div>켐리치</div>
							<div>교보생명보험</div>
							<div>제일인터내셔널</div>
							<div>엘지</div>
							<div>넷게임즈</div>
							<div>롯데닷컴</div>
							<div>메가스터디교육</div>
							<div>블루홀</div>
							<div>한화테크윈</div>
							<div>LG화학</div>
						</div>
					</div>


				</div>
			</div>
			<div class="col-md-3">
				<div class="conten" style="padding:5px">
					<ul class="nav nav-tabs">
					   <li class="active"><a data-toggle="tab" href="#individual">개인회원</a></li>
					   <li><a data-toggle="tab" href="#company">기업회원</a></li>
					</ul>

					<div class="tab-content">
						<div id="individual" class="tab-pane active">
							<form class="login-form">
								<div class="form-group input-group-sm has-feedback">
									<span class="glyphicon glyphicon-user form-control-feedback"
										aria-hidden="true"></span> <input type="text"
										class="form-control " placeholder="아이디">
								</div>
								<div class="form-group input-group-sm has-feedback">
									<input type="password" class="form-control" placeholder="비밀번호">
									<span class="glyphicon glyphicon-lock form-control-feedback"
										aria-hidden="true"></span>
								</div>
								<div class="input-group-sm">
									<div class="checkbox">
										<label> <input type="checkbox"> 아이디 저장
										</label>
									</div>
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-sm btn-block"
										value="로그인">
								</div>
								<p style="font-size: 0.9em">
									<a href="#">아이디 / 비밀번호 찾기</a>
								</p>
								<p style="font-size: 0.9em">
									<a href="#">아직 회원이 아니세요? 회원가입</a>
								</p>
							</form>
						</div>
						
						<div id="company" class="tab-pane">
							<form class="login-form">
								<div class="form-group input-group-sm has-feedback">
									<span class="glyphicon glyphicon-user form-control-feedback"
										aria-hidden="true"></span> <input type="text"
										class="form-control " placeholder="아이디">
								</div>
								<div class="form-group input-group-sm has-feedback">
									<input type="password" class="form-control" placeholder="비밀번호">
									<span class="glyphicon glyphicon-lock form-control-feedback"
										aria-hidden="true"></span>
								</div>
								<div class="input-group-sm">
									<div class="checkbox">
										<label> <input type="checkbox"> 아이디 저장
										</label>
									</div>
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-sm btn-block"
										value="로그인">
								</div>
								<p style="font-size: 0.9em">
									<a href="#">아이디 / 비밀번호 찾기</a>
								</p>
								<p style="font-size: 0.9em">
									<a href="#">기업회원으로 가입하세요</a>
								</p>
							</form>
						</div>
					</div>


				</div>
			</div>
		</div>
	</section>

	<footer class="container-fluid">
		<p>Footer</p>
	</footer>
</body>
</html>