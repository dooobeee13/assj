</html><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
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
	
	$('input[name=Editselect]').click(function(){
		var newsNo=$(this).val();
		var EditNo=1;
		$.ajax({
			url:"<c:url value='/newsInfo/newsdata.do'/>",
			data:{"newsNo":newsNo,
				"EditNo":EditNo},
			success:function(data){
				$('#newsContent').val(data.newsContent);
				$('#newsTitle').val(data.newsTitle);
				$('#newsNo').val(data.newsNo);
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
		
	});
	
	$('form[name=newssubmit]').submit(function(){
		if($('input[name=newsTitle]').val()==''){
			alert("뉴스 제목을 입력하지 않았습니다.");
			return false;
		}else if($('input[name=newsContent]').val()==''){
			alert("뉴스의 내용을 입력하지 않았습니다.");
			return false;
		}
	});
	
	$('#deleteNews').click(function(){
		if($('input[name=Editselect]').val()==''){
			alert('뉴스가 아무것도 선택되지 않았습니다.');
			return false;
		}
		if(confirm('해당 뉴스를 삭제하시겠습니까?')){
			var newsNo=$('input[name=Editselect]').val();
			location.href='<c:url value="/administrator/news/newsDelete.do?newsNo='+newsNo+'"/>';			
		}
		
	});
});

</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.newsList{
	border-collapse: collapse;
	margin-top:2em;
}
.newsList td, .newsList th{
	border:1px solid #b8b8b8;
}
.newsList th{
	background:#607D8B;
}
.newsList td{
	height:3em;
}
</style>
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
						<li><a href="<c:url value='/administrator/news/updatenews.do'/>">공채 뉴스 작성</a></li>
						<li class="select"><a href="<c:url value='/administrator/news/newsList.do'/>">공채 뉴스 관리</a></li>
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
				<!-- 뉴스 부분 시작 -->
				<div class="col-div-100-100" style="padding-left: 2em;">
				<div class="col-div-100">
					<table class="newsList"style="width: 100%; border:1px solid #b8b8b8;">
						<colgroup>
							<col style="width: 5%">
							<col style="width: 8%">
							<col style="width: 40%">
							<col style="width: 80%">
						</colgroup>
						<thead>
							<tr style="text-align: center;">
								<th>선택</th>
								<th>뉴스 번호</th>
								<th>뉴스 제목</th>
								<th>뉴스 내용</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="map" items="${list }">
								<tr>
									<td style="text-align: center;"><input type="radio" name="Editselect" value="${map['NEWS_NO'] }"></td>
									<td style="text-align: center; border-right:2px solid #607D8B;">${map['NEWS_NO'] }</td>
									<td style="padding-left: 1em;">${map['NEWS_TITLE'] }</td>
									<c:if test="${fn:length(map['NEWS_CONTENT'])>80 }">
										<td style="padding-left: 1em;">${fn:substring(map['NEWS_CONTENT'],0,80) }
											..</td>
									</c:if>
									<c:if test="${fn:length(map['NEWS_CONTENT'])<=80 }">
										<td style="padding-left: 1em;">${map['NEWS_CONTENT'] }</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>

					</table>
					<input id="deleteNews" type="button" value="삭제" style="margin-left:12px; margin-top:1em;">
				</div>
				<div class="col-div-100">
					<form class="col-div-100-100" style="height:60%; margin-top:1em;" name="newssubmit" method="post"
					 action="<c:url value='/administrator/news/newsEdit.do'/>">
					<table class="col-div-90-90 newsform">
						<colgroup>
							<col style="width: 20%;">
							<col style="width: 80%">
						</colgroup>
						<tbody>
							<tr style="height:5%; border:none; ">
								<th style="border:none;"><h1>공채 뉴스 수정</h1></th>
							</tr>
							<tr style="height:5%;">
								<th style="background:#607D8B;">제목</th>
								<td style="background:#607D8B;"><input type="hidden" id="newsNo" name="newsNo"><input id="newsTitle" name="newsTitle" type="text" size="50" style="height:3em; font-size: large;"></td>
							</tr>
							<tr style="height:35%;">
								<th style="background:#F4FFFE;">내용</th>
								<td style="background:#F4FFFE;"><textarea id="newsContent" name="newsContent" rows="25" cols="80" style="resize: none;"></textarea></td>
							</tr>
						</tbody>
					</table>
					<div class="col-div-100-10" style="padding-right:10em; padding-top:2em;">
						<input id="newsEdit" style="float:right;" type="submit" value="수정하기">
					</div>
				</form>
				</div>
				</div>
			</div>
	</article>
</div>
</body>
</html>