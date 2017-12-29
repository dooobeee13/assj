<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>1:1상담문의</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){	
		$(window).load(function(){
			$('#noticeBoard ul li:eq(0)').attr("class","active");
		});  
			
		$('#testAnchor').click(function(){			
			$.ajax({
				url : '<c:url value="/member/menu/test.do"/>',
				success : function(res){
					$('#test').append(res);
				}
			});		
		});
			
		$('#step1').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$('#noticeBoard ul li:eq(0)').attr("class","active");
			$.ajax({
				url: '<c:url value="/member/menu/step1.do"/>',
				success :function(res){
					$('.total').html('');
					$('#all').html(res);
				}
			});
		});
		
		$('#step2').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$('#noticeBoard ul li:eq(1)').attr("class","active");
			$.ajax({
				url: '<c:url value="/member/menu/step2.do"/>',
				success :function(res){
					$('.total').html('');
					$('#notice').html(res);
				}
			});
		});
		
		$('#step3').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$('#noticeBoard ul li:eq(2)').attr("class","active");
			$.ajax({
				url: '<c:url value="/member/menu/step3.do"/>',
				success :function(res){
					$('.total').html('');
					$('#event').html(res);
				}
			});
		});
		
		$('#step4').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$('#noticeBoard ul li:eq(3)').attr("class","active");
			$.ajax({
				url: '<c:url value="/member/menu/step4.do"/>',
				success :function(res){
					$('.total').html('');
					$('#open').html(res);
				}
			});
		});
		
		$('#step5').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$('#noticeBoard ul li:eq(4)').attr("class","active");
			$.ajax({
				url: '<c:url value="/member/menu/step5.do"/>',
				success :function(res){
					$('.total').html('');
					$('#news').html(res);
				}
			});
		});
		
		$('#step1').trigger('click');
		
		/* $('#noticeBoard ul li:eq(0)').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$(this).attr("class","active");
			
			$('.total').hide();
			$('#all').show();
		});
		 
		$('#noticeBoard ul li:eq(1)').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$(this).attr("class","active");
			
			$('.total').hide();
			$('#notice').show();
		});
		$('#noticeBoard ul li:eq(2)').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$(this).attr("class","active");
			
			$('.total').hide();
			$('#event').show();
		});
		$('#noticeBoard ul li:eq(3)').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$(this).attr("class","active");
			
			$('.total').hide();
			$('#open').show();
		});
		$('#noticeBoard ul li:eq(4)').click(function(){
			$('#noticeBoard ul li').attr("class","");
			$(this).attr("class","active");
			
			$('.total').hide();
			$('#news').show();
		});
 */
	});
</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
#frame {
	padding: 20px;
	background-color: #ffff;
}

#searchTable {
	float: right;
}

table th, table {
	text-align: center;
}

.divPage {
	text-align: center;
}

h1 img {
	vertical-align: bottom;
	width: 70px;
}

/* 사이드바 스타일 */
#sidebar-wrapper {
	/* position:absolute;
    width: 190px;
    height: 63%; */
	background: #ffff;
	overflow-x: hidden;
	overflow-y: auto;
	height: 900px;
}

.sidebar-nav {
	/*  width: 250px;
    margin: 0;
    padding: 0; */
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

.sidebar-nav>.sidebar-brand {
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
				<!-- 페이징 처리에 필요한 form 태그 -->
				<form name="frmPage" method="post"
					action="<c:url value='/reBoard/list.do'/>">
					<input type="hidden" name="searchCondition"
						value="${param.searchCondition }"> <input type="hidden"
						name="searchKeyword" value="${param.searchKeyword }"> <input
						type="hidden" name="currentPage">
				</form>

				<div id="frame">
					<h1>
						<img alt="noticeImg" src="<c:url value='/images/notice.png'/>">&nbsp;공지사항
					</h1>
					<hr>
					<div id="noticeBoard">
						<ul class="nav nav-tabs nav-justified">
							<li><a id="step1">전체</a></li>
							<li><a id="step2">공지</a></li>
							<li><a id="step3">이벤트</a></li>
							<li><a id="step4">오픈</a></li>
							<li><a id="step5">뉴스</a></li>
						</ul>
					</div>
					<br><br><br><br>

					<c:if test="${!empty param.searchKeyword }">
						<!-- 검색의 경우 -->
						<p>검색어 : ${searchVO.searchKeyword}, ${pagingInfo.totalRecord }건
							검색되었습니다.</p>
					</c:if>
					<c:if test="${empty param.searchKeyword }">
						<!-- 전체 조회의 경우 -->
						<p>전체 조회 결과, ${pagingInfo.totalRecord }건 조회되었습니다.</p>
					</c:if> 

					<div class="form-group">
						<div class="divSearch">
							<form name="frmSearch" method="post"
								action="<c:url value='/member/menu/notice.do'/>">
								<table id="searchTable">
									<tr>
										<td style="width: 20%"><select class="form-control"
											name="searchCondition">
												<option value="1"
													<c:if test="${param.searchCondition=='1'}"> 
					            		selected
					            	</c:if>>선택</option>
												<option value="2017"
													<c:if test="${param.searchCondition=='2017'}"> 
					            		selected
					            	</c:if>>2017</option>
												<option value="2016"
													<c:if test="${param.searchCondition=='2016'}"> 
					            		selected
					            	</c:if>>2016</option>
												<option value="2015"
													<c:if test="${param.searchCondition=='2015'}"> 
					            		selected
					            	</c:if>>2015</option>
												<option value="2014"
													<c:if test="${param.searchCondition=='2014'}"> 
					            		selected
					            	</c:if>>2014</option>
										</select></td>
										<td style="width: 70%"><input type="text"
											class="form-control" size="8" maxlength="4"
											name="searchKeyword" placeholder="검색어를 입력하세요"
											value="${param.searchKeyword }"></td>
										<td style="width: 10%"><input type="submit"
											class="btn btn-primary btn-sm" value="검색"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<br>
					<br>

					<div class="total" id="all">
					</div>

				    <div class="total" id="notice">
					</div>

					<div class="total" id="event">
					</div>

					<div class="total" id="open">
					</div>

					<div class="total" id="news">
					</div> 

				</div>		
			</div>
		</div>
	</div>
	<c:import url="../../index/footer.jsp" />
</body>
</html>