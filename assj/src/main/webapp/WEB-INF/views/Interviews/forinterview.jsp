<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
<script type="text/javascript">
$(function(){
	$('.search-button').mousedown(function(){
		$(this).attr('class','one-button-click');
	});

	$('.search-button').mouseup(function(){
		$(this).attr('class','one-button');
	});
	$('.cals').click(function(){
		location.href="<c:url value='/Interviews/oncalendar.do'/>";
	});
	
	$('#goselect').click(function(){
		window.open('<c:url value="/Interviews/interviewdate.do"/>',' ','width=475, height=600, top=300, left=650, location=no,menubar=no, status=no, toolbar=no');
	});
});
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../company/cTop.jsp" %>

<link rel="stylesheet" href="<c:url value='/css/Search-TS.css'/>">
<div class="interview-container" style="overflow: hidden; border: none; margin-bottom:2em;">
	<div class="none-select"style="width:20%; height:70px; border-bottom:1px solid black; float:left;">
	</div>
	<div class="interview-top" style="width:60%; height:70px;float:left;">
		<div class="col-div-50-100 none-select cals" style="color:#505050;">
			<img><span class="interview-title">면접캘린더</span>
		</div>
		<div class="col-div-50-100 inter-select fors" style="color:#505050;">
			<img><span class="interview-title">면접대상자</span>
		</div>
	</div>
	<div class="none-select"style="width:20%; height:70px; border-bottom:1px solid black; float:left;">
	</div>
	<div class="interview-artic" style="width:100%; box-sizing: border-box;">
		<!-- 윗 부분 -->
		<div class="col-div-100-20 rele-titles" style="margin-top:2em;">
			<label><input type="radio" name="interview-type"> 전체 </label>&nbsp;&nbsp;
			<label><input type="radio" name="interview-type"> 단독면접</label>&nbsp;&nbsp;
			<label><input type="radio" name="interview-type"> 그룹면접</label>
		</div>
		<div class="col-div-10-100" style="float:right; margin-bottom:1em; margin-right:4em;">
			<button id="goselect" class="one-button search-button" style="width:10em;margin-bottom:0.2em;"> 면접일정 등록 </button>&nbsp;&nbsp;<select class="one-list">
											<option value="5">5개씩 보기</option>
											<option value="10">10개씩 보기</option>
											<option value="30">30개씩 보기</option>
											<option value="50">50개씩 보기</option>
										</select>		
		</div>
		<!-- 가운데 테이블 부분 -->
		<div class="col-div-100-100" style="height: auto; padding-bottom:3em;">
			<table class="interview-table" style=" width:95%;margin: auto; text-align: center;">
				<thead>
					<tr>
						<th rowspan="2" style="width:8%; text-align: center;"><input type="checkbox"></th>
						<th rowspan="2" style="width:15%; text-align: center;">지원일</th>
						<th rowspan="2" style="width:25%; text-align: center;">면접명</th>
						<th rowspan="2" style="width:10%; text-align: center;">이름</th>
						<th rowspan="2" style="width:15%; text-align: center;">학교명</th>
						<th rowspan="2" style="width:20%; text-align: center;">면접상태</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty list }">
					
					</c:if>
					<c:if test="${!empty list }">
						<c:forEach var="vo" items="${list }">
							<tr style="border-bottom:1px solid #b8b8b8;">
								<td style="width:8%;"><input type="checkbox" value="${vo['MEM_NO'] }"></td>
								<td style="width:15%;"><fmt:formatDate value="${vo['ES_REGDATE'] }" pattern="yyyy-MM-dd"/></td>
								<td style="width:25%;">${vo['HN_NOTITITLE'] }</td>
								<td style="width:10%;">${vo['MEM_NAME'] }</td>
								<td style="width:15%;"></td>
								<td style="width:20%;">${vo['ES_STATUS'] }</td>
							<tr>
						</c:forEach>
					</c:if>
					<!-- <tr style="border-bottom:1px solid #b8b8b8;">
						<td style="width:8%;"><input type="checkbox"></td>
						<td style="width:15%;">2018년 01월 12일</td>
						<td style="width:25%;">자바프로젝트</td>
						<td style="width:10%;">정채연</td>
						<td style="width:15%;">DIA</td>
						<td style="width:20%;">불참</td>
					<tr>
					<tr style="border-bottom:1px solid #b8b8b8;">
						<td style="width:8%;"><input type="checkbox"></td>
						<td style="width:15%;">2018년 02월 27일</td>
						<td style="width:25%;">삼성물산 프로젝트</td>
						<td style="width:10%;">권나라</td>
						<td style="width:15%;">헬로비너스</td>
						<td style="width:20%;">참여</td>
					<tr>
					<tr style="border-bottom:1px solid #b8b8b8;">
						<td style="width:8%;"><input type="checkbox"></td>
						<td style="width:15%;">2018년 03월 22일</td>
						<td style="width:25%;">엘지 프로젝트</td>
						<td style="width:10%;">유라</td>
						<td style="width:15%;">걸스데이</td>
						<td style="width:20%;">응답 대기</td>
					<tr> -->
				</tbody>
			</table>
		</div>
		<!-- 아랫부분 -->
		<div class="col-div-10-100" style="float:right; margin-bottom:1em; margin-right:4em;">
			<button class="one-button search-button" style="width:10em;margin-bottom:0.2em; "> 일정삭제 </button>		
		</div>
	</div>
</div>
<%@include file="../index/footer.jsp" %>
</body>
</html>