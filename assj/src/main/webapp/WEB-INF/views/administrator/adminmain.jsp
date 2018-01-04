<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>" ></script>
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
	
	$('#openNavbutton').hover(function(){
		$(this).css('color','white');
	},function(){
		$(this).css('color','black');
	});
	
	$('.AdminChat').click(function(){
		modalLayer.fadeIn("fast");
		modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
		bgLayerOpen();
		$(".closeModal").click(function(){
			  modalLayer.fadeOut("slow");
			  bgLayerClear();
		});
	});
	
	//관리자 생성 클릭 window.open 형식
	$('.CreateAdmin').click(function(){
		window.open('<c:url value="/administrator/login/createadmin.do"/>','CreateAdminAccount','width=500, height=400, top=300, left=650, location=no,menubar=no, status=no, toolbar=no');
	});
	
	//로고 글릭
	$('.MainLogo').click(function(){
		location.href='<c:url value="/administrator/adminmain.do"/>';
	})
	
	
	//채팅 모달
	var modalLayer = $("#modalLayer");
	var modalLink = $(".modalLink");
	var modalCont = $(".modalContent");
	var marginLeft = modalCont.outerWidth()/3;
	var marginTop = modalCont.outerHeight()/3; 

	modalLink.click(function(){
		bgLayerOpen();
	  modalLayer.fadeIn("slow");
	  modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
	  $(this).blur();
	  $(".modalContent > a").focus();
	  
	  return false;
	});
	
	function bgLayerOpen() {
	    if(!$('.bgLayer').length) {
	        $('<div class="bgLayer"></div>').appendTo($('body'));
	    }
	    var object = $(".bgLayer");
	    var w = $(document).width()+12;
	    var h = $(document).height();

	    object.css({'width':w,'height':h}); 
	    object.fadeIn(500); 
	}
	function bgLayerClear(){
	    var object = $('.bgLayer');
		if(object.length) {
		    object.fadeOut(500, function() {
		   		object.remove();
			});
	    }
	}
	
	$('.closeModal').hover(function(){
		$(this).css('opacity','0.3');
	},function(){
		$(this).css('opacity','1');
	});
});

window.onload=function(){
	//기업 통계 데이터
	var pieData = {
			  대기업:26,
			  중견기업: 76,
			  중소기업: 317,
			  공기업: 12,
			  벤처기업: 56
			};
	//기업 통계 
	var chartDonut = c3.generate({
		  bindto: "#PieData",
		  data: {
		    json: [pieData],
		    keys: {
		      value: Object.keys(pieData),
		    },
		    type: "donut",
		  },
		  donut: {
		    title: "487개의 공채 중 기업당 비율 ",
		  },
		});
	
	//회원 통계
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
function openNav() {
    document.getElementById("mySidenav").style.left = "83%";
}

function closeNav() {
    document.getElementById("mySidenav").style.left = "100%";
}

//모달쪽

</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="overflow:hidden;">
<div class="admin-container" style="box-shadow: 0 4px 4px #b8b8b8;">
	<header class="col-div-100-8" style="z-index: 10; position:relative;">
		<div class="col-div-100-100 "  style="background:#607D8B; box-shadow: 0 4px 4px #b8b8b8; padding:20px;position: relative;">
			<img class="MainLogo" src="<c:url value='/images/innerlogo.png'/>" style="width:180px; float:left; cursor: pointer;"/>
			<span id="openNavbutton" style="font-size:15px;cursor:pointer; float:right" onclick="openNav()"> &#9776; Side Menu</span>
		</div>
	</header>
	<article class="col-div-100-80" style="border-left: 1px solid #b8b8b8; height:92%; overflow-y: hidden; position: relative; overflow-x: hidden;">
		<!-- 사이드바 메뉴 부분 -->
		<div class="col-div-15-100 sid" style="box-shadow: 4px 0 4px #b8b8b8;">
			<div class="col-div-100-30" style="font-size:14px; ">
				<div class="col-div-100-80" style="background-image: url('<c:url value="/icon/adminMain.jpg"/>'); background-size: cover;">
					<div class="col-div-100-70">
						<div class="col-div-30-100"><img src="<c:url value='/icon/beb42.jpeg'/>"  style="border-radius: 25px; margin-top:4em;"></div>
						<div class="col-div-70-100" style="color:#607D8B; font-weight: bold; padding-left:0.3em; font-size: 12px;"><p style="margin-top:4.5em;margin-bottom:6px;">관리자1</p><p style="margin-top:0;">testAdmin@naver.com</p></div>
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
						<li><a href="/assj/member/menu/noticeEditOut.do">공지글</a></li>
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
		<div class="col-div-80-100" style="margin-left:1em; width:83%; font-size:0.7em;">
			<div class="col-div-100-20">
			<!-- 메인 화면 통계부분 처리 -->
				<div class="main-stati">
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
				<div class="main-stati">
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
				<div class="main-stati">
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
				<div class="main-stati">
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
			<div class="col-div-100-70 ">
				<div class="col-div-50-100 statics" style="margin:1em; background:white; width:45%;">
					<div class="col-div-100-10 divMainbox" style="text-align: center;">
						<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 회원 통계</h2>
					</div>
					<div class="col-div-100-90" id="chart" style="width:90%; margin-left:1em;">
					
					</div>
				</div>
				<div class="col-div-50-100 statics" style="margin:1em; background:white; width:45%;">
					<div class="col-div-100-10 divMainbox" style="text-align: center;">
						<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 현재 모집하고 있는 기업 별 공채 비율</h2>
					</div>
					<div class="col-div-100-90" id="PieData">
					
					</div>
				</div>
			</div>	
		</div>
		<div id="mySidenav" class="sidenav">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="font-size: 27px">&times;</a>
		  <a href="#" class="AdminChat">관리자 채팅방</a>
		  <a href="#"></a>
		  <a href="<c:url value='/index.do'/>">공채 홈페이지 가기</a>
		  <a href="#" class="CreateAdmin">새로운 관리자 생성</a>
		  <a href="#">로그아웃</a>
		</div>
	</article>
	<div id="modalLayer">
	  <div class="modalContent">
		  <div style="padding:5px; margin:0 auto; width:95%; height:90%; position:relative;">
	  		<img class="closeModal"src="<c:url value='/icon/xbutton.png'/>" style="float:right;margin-bottom:1em; width:22px;">
		  <div class="newsDetail" style="margin:0 auto; width:100%; height:95%;">
		 	<div class="col-div-100-20 divMainbox" style="margin-bottom:1em;">
				<h2 class="divMainbox-title" style="padding-left:1em; text-align:center;">관리자 채팅</h2>
			</div>
		  		<!-- 채팅용 화면 -->
		    	<div style="width:93%;height:80%;overflow-y:scroll; border:1px solid #b8b8b8;padding: 1em; background:white; overflow-x:hidden;">
		    	<!-- 개인 채팅 내용 -->
		    		<div class="chatInnerDiv">
		    			<div class="chatInnerTitle"><img src="<c:url value='/icon/beb42.jpeg'/>"  style="float:left;"><h2>정채연</h2></div>
		    			<p class="chatInnerContent">여러분 갓기찬은 제꺼니까 건들지 마세여 다들 늙다리 주제에</p>
		    		</div>
		    		<div class="chatInnerDiv">
		    			<h2 style="font-size:1em; text-align:right;font-weight: bold;margin-top:0;">내가 보낸 메세지</h2>
		    			<p class="Mycontent">하앍 여러분이 굳이 말 안해도 전 다 사랑해옇ㅎㅎㅎㅎㅎㅎ</p>
		    		</div>
		    		<div class="chatInnerDiv">
		    			<div class="chatInnerTitle"><img src="<c:url value='/icon/beb42.jpeg'/>"  style="float:left;"><h2>정채연</h2></div>
		    			<p class="chatInnerContent">여러분 갓기찬은 제꺼니까 건들지 마세여 다들 늙다리 주제에</p>
		    		</div>
		    		<div class="chatInnerDiv">
		    			<div class="chatInnerTitle"><img src="<c:url value='/icon/beb42.jpeg'/>"  style="float:left;"><h2>정채연</h2></div>
		    			<p class="chatInnerContent">여러분 갓기찬은 제꺼니까 건들지 마세여 다들 늙다리 주제에</p>
		    		</div>
		    	</div>
		    	
		    	<!-- 채팅판 -->
		    	<div style="width:93%; padding:1em;">
		    		<div class="col-div-70-100">
		    			<textarea rows="7" cols="54" style="resize: none;"></textarea>
		    		</div>
		    		<div class="col-div-30-100" style="float:right;">
		    			<input style="float:right; padding:0.4em;" type="button" value=" 전 송 ">
		    		</div>
		    	</div>
		  </div>
	  	</div>
	  </div>
	</div>
</div>
</body>
</html>