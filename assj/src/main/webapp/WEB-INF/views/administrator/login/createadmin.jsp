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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="width:460px; height:300px;">
<div class="divMainbox" style="text-align: center;">
	<h2 class="divMainbox-title" style="margin:0 auto; float:none; font-weight: bold;">관리자 생성</h2>
</div>
	<form name="adminform" method="post"
		action="<c:url value='/administrator/login/createadmin.do'/>"
		style="width: 100%; text-align: center;">
		<table class="adMinLoginfrm" style="width: 90%; text-align: center;">
			<colgroup>
				<col style="width: 35%;">
				<col style="width: *;">
			</colgroup>
			<tbody>
				<tr>
					<th style="font-size: 1.5em; text-align: right;">아이디</th>
					<td style="font-size: 1.5em;"><input id="userid" name="userid"
						class="one-text" type="text" placeholder=" 아이디를 입력하세요."></td>

				</tr>
				<tr>
					<th style="font-size: 1.5em; text-align: right;">비밀번호</th>
					<td style="font-size: 1.5em;"><input id="pwd" name="pwd"
						class="one-text" type="password" placeholder=" 비밀번호를 입력하세요."></td>
				</tr>
				<tr>
					<th style="font-size: 1.5em; text-align: right;">비밀번호 확인</th>
					<td style="font-size: 1.5em;"><input id="pwd1" name="pwd1"
						class="one-text" type="password" placeholder=" 비밀번호를 입력하세요."></td>
				</tr>
				<tr>
					<th style="font-size: 1.5em; text-align: right;">이름</th>
					<td style="font-size: 1.5em;"><input id="name" name="name"
						class="one-text" type="text" placeholder=" 이름을 입력해주세요."></td>
				</tr>
			</tbody>
		</table>
		<br> <input class="one-button" type="submit" value="등록하기"
			style="font-size: 1.4em;">&nbsp;&nbsp;&nbsp;
			<input class="one-button" type="button" value="취소"
			style="font-size: 1.4em;">
	</form>
</body>
</html>