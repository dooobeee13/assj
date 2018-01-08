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
	
	$('.blue').css("color","blue");
	$('.red').css("color","red");
	
	$('#chkAll').click(function(){
		$('tbody input[type=checkbox]').prop('checked', this.checked);
	});
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
function pageFunc(curPage){
		document.frmPage.currentPage.value=curPage;
		frmPage.submit();
	}
	

</script>
<style type="text/css">	
	#frame {
		padding:40px;
		background-color: #ffff;
		height:820px;
	}
	table{
		text-align:center;
	}
	table th{
		text-align:center;
		background-color: #6adf6f;
	}
	.btnDiv{
		text-align:right;
	}
	#searchTable{
		float:right;
	}
	.divPage{
		text-align:center;
	}
	h1 img{
		vertical-align: bottom;
		width:60px;
	}
	.red{
		color:red;
	}
</style>
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
						<li><a href="/assj/member/menu/noticeEditOut.do">공고페이지관리</a></li>
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
		<div class="col-div-80-100" style="margin-left:1em; width:83%; font-size:0.7em;">
			<div class="col-div-100-20">
			<!-- 페이징 처리에 필요한 form 태그 -->
			<form name="frmPage" method="post" 
				action="<c:url value='/member/menu/adminQna.do'/>">
				<input type="hidden" name="searchKeyword" 
					value="${param.searchKeyword }">
				<input type="hidden" name="currentPage">
			</form>
		<!-- 본문 -->
		<div id="frame">
				<h3><b>Q&A게시판 관리</b></h3>
				<hr>
				<c:if test="${!empty param.searchKeyword }">
					<!-- 검색의 경우 -->
					<p>검색어 : ${searchVO.searchKeyword}, ${pagingInfo.totalRecord }건 
						검색되었습니다.</p>
				</c:if>
				<c:if test="${empty param.searchKeyword }">
					<!-- 전체 조회의 경우 -->
					<p>전체 조회 결과, ${pagingInfo.totalRecord }건 조회되었습니다.</p>
				</c:if>
				
				<div class="divSearch">
				<form name="frmSearch" method="post" 
   					action="<c:url value='/member/menu/adminQna.do'/>">
					<table id="searchTable">
						<tr>
							<td style=width:80%>
								<input type="text" class="form-control" size="8" maxlength="4" name="searchKeyword" placeholder="검색어를 입력하세요" value="${param.searchKeyword }">
							</td>
							<td style=width:20%>
								<input type="submit" class="btn btn-primary btn-sm" value="검색" >
							</td>
						</tr>
					</table>
				</form>
				<br><br><br>
				<table class="table table-bordered">
				<colgroup>
					<col width=10%>
					<col width=*%>
					<col width=14%>
					<col width=12%>
					<col width=10%>
					<col width=14%>
				</colgroup>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일시</th>
					<th>조회수</th>
					<th>관리</th>
				</tr>			
					<c:forEach var="reboardVO" items="${list }">
					<tr>
					<td>${reboardVO.no}</td>
					<td style="text-align:left">

						<c:if test="${reboardVO.delFlag=='Y'}">
							<span style="color: gray"><s>삭제된 글입니다.</s></span>
						</c:if> 
						 <c:if test="${reboardVO.delFlag!='Y'}">						
							<!-- 답변-계층적으로 보여주기 -->
							<c:if test="${reboardVO.step>0 }">
								<c:forEach var="i" begin="1" end="${reboardVO.step }"> 
									&nbsp;
								</c:forEach>
								<span class="glyphicon glyphicon-arrow-right" style="color:red"></span>						
								<%-- <img src="<c:url value='/images/re.png'/>" alt="re이미지"> --%>
							</c:if>
<a href="<c:url value='/member/menu/AdminQnaDetail.do?no=${reboardVO.no}'/>">
								<!-- 제목이 긴 경우 일부만 보여주기 -->
								<c:if test="${fn:length(reboardVO.title)>30 }">
									${fn:substring(reboardVO.title,0,30) }...
								</c:if>
								<c:if test="${fn:length(reboardVO.title)<=30 }">						
									${reboardVO.title}
								</c:if>
							</a>
							 <!-- 24시간 이내의 글인 경우 -->
							<c:if test="${reboardVO.newImgTerm<24 }">
								<img src='<c:url value="/images/new.gif"/>' 
								alt="new 이미지">
							</c:if>  
					 </c:if> 
					</td>
					<td>
					<c:if test="${reboardVO.name=='관리자'}">
						<span class="red">${reboardVO.name}</span>
					</c:if>
					<c:if test="${reboardVO.name!='관리자'}">
						${reboardVO.name}						
					</c:if>
					</td>
					<td><fmt:formatDate value="${reboardVO.regdate}" 
						pattern="yyyy-MM-dd" /> </td>
					<td>${reboardVO.readCount}</td>	
					<td>
						<a href="<c:url value='/member/menu/adminQnaReply.do?no=${reboardVO.no}'/>"><button type="button" class="btn btn-default btn-sm" >답변</button></a>&nbsp;
						<a href="<c:url value='/member/menu/adminQnaDelete.do?no=${reboardVO.no}'/>"><button type="button" class="btn btn-default btn-sm"　id="delBtn">삭제</button></a><br>
					</td>	
				</tr> 
		  	</c:forEach>
				</table>
	<div class="divPage">
	<ul class="pagination">
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 ◀ -->
	<c:if test="${pagingInfo.firstPage>1 }">
		<li><a href="javascript:void(0)" onclick="pageFunc(${pagingInfo.firstPage-1})">«</a></li>
	</c:if>	
	
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage}" 
		end="${pagingInfo.lastPage}">
		<c:if test="${i==pagingInfo.currentPage}">
			<li><a href="javascript:void(0)" style="background-color:#337ab7; color:white">${i }</a></li>
		</c:if>
		<c:if test="${i!=pagingInfo.currentPage}">
			<li><a href="javascript:void(0)" onclick="pageFunc(${i })">${i }</a></li>
 		</c:if>				
	</c:forEach>
	
	<!-- 다음 블럭으로 이동 ▶ -->
	<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage}">
		<li><a href="javascript:void(0)" onclick="pageFunc(${pagingInfo.lastPage+1})">»</a></li>
	</c:if>
	
	<!--  페이지 번호 끝 -->
	</ul>
	</div>
		<br>
		
		</div>
		</div>
		
		
			</div>
		</div>
</body>
</html>