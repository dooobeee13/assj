<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../inc/adminTop.jsp" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<script type="text/javascript">
$(function(){
	
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
<style type="text/css">
.newsList{
	border-collapse: collapse;
	margin-top:2em;
}
.newsList td, .newsList th{
	border:1px solid #b8b8b8;
}
.newsList td{
	height:3em;
}
</style>
		<!-- 뉴스 부분 시작 -->
			<div class="col-div-100-100" style="padding-left: 2em; font-size:1em;">
				<div class="col-div-100">
					<table class="newsList"style="width: 90%; border:1px solid #b8b8b8;">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 8%">
							<col style="width: 40%">
							<col style="width: 80%">
						</colgroup>
						<thead>
							<tr style="text-align: center; height:4em;">
								<th class="divMainbox">선택</th>
								<th class="divMainbox">뉴스 번호</th>
								<th class="divMainbox">뉴스 제목</th>
								<th class="divMainbox">뉴스 내용</th>
							</tr>
						</thead>
						<tbody style="background: white;">
							<c:if test="${empty list }">
								<tr>
									<td colspan="4" style="text-align: center;">데이터가 존재하지 않습니다.</td>
								</tr>
							</c:if>
							<c:if test="${!empty list }">							
								<c:forEach var="map" items="${list }">
									<tr style="height:3.5em;">
										<td style="text-align: center;"><input type="radio" name="Editselect" value="${map['NEWS_NO'] }"></td>
										<td style="text-align: center;">${map['NEWS_NO'] }</td>
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
							</c:if>
						</tbody>

					</table>
					<input id="deleteNews" type="button" value="삭제" style="margin-left:12px; margin-top:1em;">
				</div>
				<div class="col-div-100">
					<form class="col-div-100-100" style="height:60%; margin-top:1em;" name="newssubmit" method="post"
					 action="<c:url value='/administrator/news/newsEdit.do'/>">
					<table class="col-div-90-90 newsform">
						<colgroup>
							<col style="width: 20%; text-align:center;">
							<col style="width: 80%">
						</colgroup>
						<tbody>
							<tr style="height:5%; border:none; ">
								<th  style="border:none;"><h1>공채 뉴스 수정</h1></th>
							</tr>
							<tr style="height:5%;">
								<th class="divMainbox" style="text-align: center;">제목</th>
								<td class="divMainbox" style="padding:1.4em;"><input type="hidden" id="newsNo" name="newsNo"><input id="newsTitle" name="newsTitle" type="text" size="50" style="height:3em; font-size: large;"></td>
							</tr>
							<tr style="height:35%;">
								<th style="background:white; text-align: center;">내용</th>
								<td style="background:white; padding:5em; padding-left:2em;"><textarea id="newsContent" name="newsContent" rows="25" cols="80" style="resize: none;"></textarea></td>
							</tr>
						</tbody>
					</table>
					<div class="col-div-100-10" style="padding-right:10em; padding-top:2em;">
						<input id="newsEdit" style="float:right;" type="submit" value="수정하기">
					</div>
				</form>
				</div>
				</div>
<%@include file="../inc/adminBottom.jsp"%>