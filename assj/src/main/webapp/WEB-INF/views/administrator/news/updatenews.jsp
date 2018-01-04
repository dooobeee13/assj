</html><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../inc/adminTop.jsp" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<link rel="stylesheet" href="<c:url value='/c3/c3.css'/>">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<script type="text/javascript">
$(function(){
	$('form[name=newssubmit]').submit(function(){
		if($('input[name=newsTitle]').val()==''){
			alert("뉴스 제목을 입력하지 않았습니다.");
			event.preventDefault();
		}else if($('input[name=newsContent]').val()==''){
			alert("뉴스의 내용을 입력하지 않았습니다.");
			event.preventDefault();
		}
	});
});

</script>
			<!-- 뉴스 부분 시작 -->
			<div class="col-div-100-100" style="padding-left:2em;">
				<form class="col-div-100-100" name="newssubmit" method="post"
					 action="<c:url value='/administrator/news/insertNews.do'/>" enctype="multipart/form-data">
					<table class="col-div-90-90 newsform">
						<colgroup>
							<col style="width: 20%;">
							<col style="width: 80%">
						</colgroup>
						<tbody>
							<tr style="height:10%; border:none; ">
								<th style="border:none; padding-top:2.4em;"><h1>공채 뉴스 작성</h1></th>
							</tr>
							<tr style="height:10%;">
								<th style="background:#607D8B;">제목</th>
								<td style="background:#607D8B;"><input name="newsTitle" type="text" size="50" style="height:3em; font-size: large;"></td>
							</tr>
							<tr style="height:10%;">
								<th style="background:#F4FFFE;">첨부사진</th>
								<td style="background:#F4FFFE;"><input type="file" id="newsUpImage" name="newsUpImage"></td>
							</tr>
							<tr style="height:50%;">
								<th style="background:#F4FFFE;">내용</th>
								<td style="background:#F4FFFE;"><textarea name="newsContent" rows="25" cols="80" style="resize: none;"></textarea></td>
							</tr>
						</tbody>
					</table>
					<div class="col-div-100-10" style="padding-right:10em; padding-top:2em;">
						<input style="float:right;" type="submit" value="작성완료">
					</div>
				</form>
				</div>
<%@include file="../inc/adminBottom.jsp"%>