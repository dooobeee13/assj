<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">  
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>" ></script>
<script type="text/javascript">
	$(function(){
		var success = '${param.success}';
		if(success==1){
			self.close();
		}
	});
</script>
<style type="text/css">
.adMinLoginfrm tr{
	height: 55px;
}
.adMinLoginfrm th{
	padding-right:10px;
	padding-top:10px;
	padding-bottom:10px;
	border-right: 1.5px solid #b8b8b8;
	border-radius: 4px;
}
.adMinLoginfrm td{
	padding-left:15px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>면접일 등록</title>
</head>
<body style="width:460px; height:300px;">
<div class="divMainbox" style="text-align: center; margin-bottom:2em;">
	<h2 class="divMainbox-title" style="margin:0 auto; float:none; font-weight: bold;">면접일 등록</h2>
</div>
	<form name="interviewform" method="post"
		action=""
		style="width: 100%; text-align: center;">
		<table class="adMinLoginfrm" style="width: 90%; text-align: center;">
			<colgroup>
				<col style="width: 35%;">
				<col style="width: *;">
			</colgroup>
			<tbody>
				<tr>
					<th style="font-size: 1em; text-align: right;">면접명</th>
					<td style="font-size: 1em;">
					<select class="select_list" style="padding:0; width:70%; height:30px;">
						<option>선택하세요.</option>
					</select></td>

				</tr>
				<tr>
					<th style="font-size: 1em; text-align: right;">면접 대상자</th>
					<td style="font-size: 1em;">
						<select class="select_list" style="padding:0; width:70%;">
							<option>선택하세요</option>
						</select>
					</td>
				</tr>
				<tr>
					<th style="font-size: 1em; text-align: right;">면접 일시</th>
					<td style="font-size: 1em;"><%@include file="dateselect.jsp" %></td>
				</tr>
				<tr>
					<th style="font-size: 1em; text-align: right;">면접장소</th>
					<td style="font-size: 1em;"><input id="name" name="name" class="one-text" type="text" placeholder="면접 장소를 입력해주세요."></td>
				</tr>
				<tr>
					<th style="font-size: 1em; text-align: right;">특이 사항</th>
					<td style="font-size: 1em;"><input id="name" name="name" class="one-text" type="text" placeholder=" 비고."></td>
				</tr>
			</tbody>
		</table>
		<br> <input class="one-button" type="submit" value="등록하기"
			style="font-size: 1em;">&nbsp;&nbsp;&nbsp;
			<input class="one-button" type="button" value="취소"
			style="font-size: 1em;">
	</form>
</body>
</html>