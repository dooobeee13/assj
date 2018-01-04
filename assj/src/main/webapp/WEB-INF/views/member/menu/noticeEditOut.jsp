<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공지사항 수정,삭제</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
   		$("select option:eq(0)").attr("selected", true);			 
   		$('select option:eq(1)').css('color','red');
		$('select option:eq(2)').css('color','blue');
		$('select option:eq(3)').css('color','orange');
		$('select option:eq(4)').css('color','green');	
		
		$('#btDeleteMulti').click(function(){
			//선택한 게시물 삭제
			var len =$('tbody input[type=checkbox]:checked').length;
			if(len==0){
				alert('삭제할 게시물을 먼저 체크하세요');
				return;
			}
			
			$('#frmList').prop('action',
				'<c:url value="/member/menu/deleteMulti.do"/>');
			$('#frmList').submit();			
		});

		$.step = function(idx, currentPage){
			var url = '<c:url value="/member/menu/step2.do"/>?notititleNo=' + idx;
			if (currentPage) {
				url += '&currentPage=' + currentPage;
			}
			
			$.ajax({
				url: url,
				dataType:"xml",
				success :function(res){
					$('.total').html('');
					$('.total').html($(res).find('result').find('html').text());
				}
			}); 
		};
		
		$.step(0);
		
		$('#noticetitleNo').change(function(){
			var idx = $(this).val();
			$.step(idx);
		});
		
		$('input[name=chkAll]').click(function(){ 
			$('tbody input[type=checkbox]').prop('checked', this.checked);
		});
	});
</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	#frame {
		padding: 45px;
		background-color: #ffff;
	}
	.divSearch{
		text-align:left;
	}
	table th,table{
		text-align:center;
		margin:0 auto;
		border-top:1px bold;
	}
	#size{
		font-size:1.3em;
		vertical-align: middle;
	}
    #align_right{
		float:right;
		margin-right:35px;
		vertical-align: bottom;
	} 
	.divPage {
		text-align: center;
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
.sidebar-nav > .sidebar-brand {
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
			<div id="frame">
				<h1>공지사항 관리</h1>
				<hr>
				<br><br>
				
				<form class="form-inline" name="frmList" id="frmList" method="post">
						<div class="form-group">	
							<label for="noticetitleNo">구분 선택</label>&nbsp;
							<select class="form-control" name="noticetitleNo" id="noticetitleNo">
								<option value="0">전체</option>
								<option value="1">공지</option>
								<option value="2">이벤트</option>
								<option value="3">오픈</option>
								<option value="4">뉴스</option>
							</select>
							<span id="size" class="glyphicon glyphicon-list"></span>
						</div>
						<br><br><br>
						<div id="align_right">
							<input type="button" class="btn btn-default" id="btDeleteMulti" value="선택 삭제" >
						</div>
						<br><br>
						
			<%-- 	<!-- 전체보기 -->
				<fieldset id="all">		
					<table class="table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" name="chkAll"></th>
								<th>번호</th>
								<th>구분</th>
								<th>제목</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>  
						<c:if test="${empty list}"> 
							 <tr>
								<td colspan='4'>공지사항이 없습니다.</td>
							</tr>
						</c:if> 
						<c:if test="${!empty list}">
							<c:forEach var="map" items="${list}" varStatus="status"> 
								<tr>
									<td><input type="checkbox" 
									name="notiItems[${status.index}].no"
									value="${map.NO}"></td>
									
									<td>${map.NO}</td>
									<td>
										<c:if test="${map.NOTITITLE=='공지'}">
											<span style="color:red">${map.NOTITITLE}</span>			
										</c:if>
										<c:if test="${map.NOTITITLE=='이벤트'}">
											<span style="color:blue">${map.NOTITITLE}</span>
										</c:if>
										<c:if test="${map.NOTITITLE=='오픈'}">
											<span style="color:orange">${map.NOTITITLE}</span>
										</c:if>
										<c:if test="${map.NOTITITLE=='뉴스'}">
											<span style="color:green">${map.NOTITITLE}</span>
										</c:if>
									</td>
									<td>
										<a href="<c:url value='/member/menu/countUpdate.do?no=${map.NO}'/>">${map.TITLE}</a>
									</td>
									<td>
										<a href="<c:url value='/member/menu/noticeEdit.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >수정</button></a>&nbsp;
										<a href="<c:url value='/member/menu/noticeOut.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >삭제</button></a><br>
									</td>
								</tr>
							</c:forEach> 
						</c:if>
						</tbody>
					</table>
					
					<div class="total" id="all">
					</div>
				</fieldset>	
					
				<!-- 공지 -->
				<fieldset id="notice">		
					<table class="table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" name="chkAll"></th>
								<th>번호</th>
								<th>구분</th>
								<th>제목</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>  
						<c:if test="${empty list1}"> 
							 <tr>
								<td colspan='4'>공지사항이 없습니다.</td>
							</tr>
						</c:if> 
						<c:if test="${!empty list1}">
							<c:forEach var="map" items="${list1}" varStatus="status"> 
								<tr>
									<td><input type="checkbox" 
									name="notiItems[${status.index}].no"
									value="${map.NO}"></td>
									
									<td>${map.NO}</td>
									<td>
										<c:if test="${map.NOTITITLE=='공지'}">
											<span style="color:red">${map.NOTITITLE}</span>			
										</c:if>
									</td>
									<td>
										<a href="<c:url value='/member/menu/countUpdate.do?no=${map.NO}'/>">${map.TITLE}</a>
									</td>
									<td>
										<a href="<c:url value='/member/menu/noticeEdit.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >수정</button></a>&nbsp;
										<a href="<c:url value='/member/menu/noticeOut.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >삭제</button></a><br>
									</td>
								</tr>
							</c:forEach> 
						</c:if>
						</tbody>
					</table>
				</fieldset>	
				
				<!-- 이벤트 -->
				<fieldset id="event">		
					<table class="table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" name="chkAll"></th>
								<th>번호</th>
								<th>구분</th>
								<th>제목</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>  
						<c:if test="${empty list2}"> 
							 <tr>
								<td colspan='4'>공지사항이 없습니다.</td>
							</tr>
						</c:if> 
						<c:if test="${!empty list2}">
							<c:forEach var="map" items="${list2}" varStatus="status"> 
								<tr>
									<td><input type="checkbox" 
									name="notiItems[${status.index}].no"
									value="${map.NO}"></td>
									
									<td>${map.NO}</td>
									<td>
										<c:if test="${map.NOTITITLE=='이벤트'}">
											<span style="color:blue">${map.NOTITITLE}</span>			
										</c:if>
									</td>
									<td>
										<a href="<c:url value='/member/menu/countUpdate.do?no=${map.NO}'/>">${map.TITLE}</a>
									</td>
									<td>
										<a href="<c:url value='/member/menu/noticeEdit.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >수정</button></a>&nbsp;
										<a href="<c:url value='/member/menu/noticeOut.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >삭제</button></a><br>
									</td>
								</tr>
							</c:forEach> 
						</c:if>
						</tbody>
					</table>
				</fieldset>	
				
				<!-- 오픈 -->	
				<fieldset id="open">		
					<table class="table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" name="chkAll"></th>
								<th>번호</th>
								<th>구분</th>
								<th>제목</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>  
						<c:if test="${empty list3}"> 
							 <tr>
								<td colspan='4'>공지사항이 없습니다.</td>
							</tr>
						</c:if> 
						<c:if test="${!empty list3}">
							<c:forEach var="map" items="${list3}" varStatus="status"> 
								<tr>
									<td><input type="checkbox" 
									name="notiItems[${status.index}].no"
									value="${map.NO}"></td>
									
									<td>${map.NO}</td>
									<td>
										<c:if test="${map.NOTITITLE=='오픈'}">
											<span style="color:orange">${map.NOTITITLE}</span>			
										</c:if>
									</td>
									<td>
										<a href="<c:url value='/member/menu/countUpdate.do?no=${map.NO}'/>">${map.TITLE}</a>
									</td>
									<td>
										<a href="<c:url value='/member/menu/noticeEdit.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >수정</button></a>&nbsp;
										<a href="<c:url value='/member/menu/noticeOut.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >삭제</button></a><br>
									</td>
								</tr>
							</c:forEach> 
						</c:if>
						</tbody>
					</table>
				</fieldset>	
					
				<!-- 뉴스 -->
				<fieldset id="news">		
					<table class="table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" name="chkAll"></th>
								<th>번호</th>
								<th>구분</th>
								<th>제목</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>  
						<c:if test="${empty list4}"> 
							 <tr>
								<td colspan='4'>공지사항이 없습니다.</td>
							</tr>
						</c:if> 
						<c:if test="${!empty list4}">
							<c:forEach var="map" items="${list4}" varStatus="status"> 
								<tr>
									<td><input type="checkbox" 
									name="notiItems[${status.index}].no"
									value="${map.NO}"></td>
									
									<td>${map.NO}</td>
									<td>
										<c:if test="${map.NOTITITLE=='뉴스'}">
											<span style="color:green">${map.NOTITITLE}</span>			
										</c:if>
									</td>
									<td>
										<a href="<c:url value='/member/menu/countUpdate.do?no=${map.NO}'/>">${map.TITLE}</a>
									</td>
									<td>
										<a href="<c:url value='/member/menu/noticeEdit.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >수정</button></a>&nbsp;
										<a href="<c:url value='/member/menu/noticeOut.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >삭제</button></a><br>
									</td>
								</tr>
							</c:forEach> 
						</c:if>
						</tbody>
					</table>
				</fieldset>	 --%>
				<div class="total" id="all">
					
				</div>
				</form>
			</div>
				</div>
		</div>
	</div>

		
	<c:import url="../../index/footer.jsp" />	
</body>
</html>