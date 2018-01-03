<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<link rel="stylesheet" href="<c:url value='/c3/c3.css'/>">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<script type="text/javascript">
$(function(){
	$('.col-li-1-option').hide();
	$('.close1').hide();
	
	$('.col-li-1-nb').each(function(){
		$(this).click(function(){
			if($(this).hasClass('Side-select')){
				$(this).css('font-weight','normal');
				$(this).removeClass('Side-select');
				$(this).find('.open1').show();
				$(this).find('.close1').hide();
				$(this).next().hide();
			}else{
				$(this).addClass('Side-select');
				$(this).css('font-weight','bold');
				$(this).find('.open1').hide();
				$(this).find('.close1').show();
				$(this).next().show();
			}
		});
	});
});

window.onload=function(){
	var chart = c3.generate({
		  bindto: "#chart",
		  data: {
		    columns: [
		      ['총 회원 수', 9750, 9770, 9803, 9843, 9945, 10223],
		      ['가입자 수', 50, 20, 133, 76, 102, 67],
		      ['탈퇴 수', 27, 34, 12, 43, 52, 39]
		    ]
		  }
		});
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="admin-container" style="box-shadow: 0 4px 4px #b8b8b8;">
	<header class="col-div-100-8" style="z-index: 10;">
		<div class="col-div-100-100"  style="background:#607D8B; box-shadow: 0 4px 4px #b8b8b8;">
			
		</div>
	</header>
	<article class="col-div-100-80" style="border-left: 1px solid #b8b8b8; height:92%; overflow-y: scroll;">
		<!-- 사이드바 메뉴 부분 -->
		<div class="col-div-15-100 sid" style="box-shadow: 4px 0 4px #b8b8b8;">
			<div class="col-div-100-30">
				<div class="col-div-100-80" style="background-image: url('<c:url value="/icon/adminMain.jpg"/>'); background-size: cover;">
					<div class="col-div-100-70">
						<div class="col-div-30-100"><img src="<c:url value='/icon/beb42.jpeg'/>" style="border-radius: 25px; margin-top:4em;"></div>
						<div class="col-div-70-100" style="color:#607D8B; font-weight: bold; padding-left:0.3em;"><p style="margin-top:4.5em;margin-bottom:6px;">관리자1</p><p style="margin-top:0;">testAdmin@naver.com</p></div>
					</div>
					<div class="col-div-100-30">
						<a href="#" style="margin-left:1em; color:#607D8B;">관리자 정보 보기</a>
					</div>
				</div>
				<div class="col-div-100-20" style="background:#607D8B;">
				</div>
			</div>
			<!-- 메뉴 선택 부분 -->
			<div class="col-div-100-70" style="background: #FBFFFF;">
				<ul class="side-li" style="font-size: 1em;">
					<li class="col-li-1-nb s1" style="cursor: pointer;"><div class="col-div-80-100">기본정보관리</div><div class="col-div-20-100"><img class="open1" src="<c:url value='/icon/open.png'/>"><img class="close1" src="<c:url value='/icon/close.png'/>"></div></li>
					<ul class="col-li-1-option o1">
						<li>사이트메인</li>
						<li>사이트정보</li>
						<li>회원가입양식</li>
					</ul>
					<li class="col-li-1-nb s2" style="cursor: pointer;"><div class="col-div-80-100">구인구직</div><div class="col-div-20-100"><img class="open1" src="<c:url value='/icon/open.png'/>"><img class="close1" src="<c:url value='/icon/close.png'/>"></div></li>
					<ul class="col-li-1-option o2">
						<li>공고페이지관리</li>
						<li>관리대상공고</li>
						<li>달력형식으로 공고 보기</li>
					</ul>
					<li class="col-li-1-nb s3" style="cursor: pointer;"><div class="col-div-80-100">회원관리</div><div class="col-div-20-100"><img class="open1" src="<c:url value='/icon/open.png'/>"><img class="close1" src="<c:url value='/icon/close.png'/>"></div></li>
					<ul class="col-li-1-option o3">
						<li>일반회원</li>
						<li>기업회원</li>
					</ul>
					<li class="col-li-1-nb s4" style="cursor: pointer;"><div class="col-div-80-100">커뮤니티관리</div><div class="col-div-20-100"><img class="open1" src="<c:url value='/icon/open.png'/>"><img class="close1" src="<c:url value='/icon/close.png'/>"></div></li>
					<ul class="col-li-1-option o4">
						<li>게시판</li>
						<li>공지글</li>
						<li>일반글</li>
						<li><a href="<c:url value='/administrator/news/updatenews.do'/>">공채 뉴스 작성</a></li>
						<li><a href="<c:url value='/administrator/news/newsList.do'/>">공채 뉴스 관리</a></li>
					</ul>
					<li class="col-li-1-nb s5" style="cursor: pointer;"><div class="col-div-80-100">통계관리</div><div class="col-div-20-100"><img class="open1" src="<c:url value='/icon/open.png'/>"><img class="close1" src="<c:url value='/icon/close.png'/>"></div></li>
					<ul class="col-li-1-option o5">
						<li>일반회원</li>
						<li>기업회원</li>
						<li>게시글</li>
					</ul>
				</ul>
			</div>
		</div>
		<!-- 섹션 부분 -->
		<div class="col-div-80-100" style="margin-left:1em; width:83%">
			<div class="col-div-100-20">
			<!-- 메인 화면 통계부분 처리 -->
				<div class="main-stati">
					<div class="col-div-100-20" style="border-bottom:2px solid #b8b8b8;padding-top:0.7em;">
						<span style="margin-left:2em;">회 원</span>
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
				<div class="main-stati">
					<div class="col-div-100-20" style="border-bottom:2px solid #b8b8b8;padding-top:0.7em;">
						<span style="margin-left:2em;">이 력 서</span>
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
				<div class="main-stati">
				
				</div>
				<div class="main-stati">
				
				</div>
			</div>
			<div class="col-div-100-70 ">
				<div class="col-div-50-100 statics" style="margin:1em; background:white; width:40%;">
					<div class="col-div-100-90" id="chart">
					
					</div>
					<div class="col-div-100-10" style="text-align: center; padding-top:2em;">
						<span>회원의 변동에 대한 통계 </span>
					</div>
				</div>
			</div>
		</div>
	</article>
</div>
</body>
</html>