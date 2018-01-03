<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">  
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>" ></script>
<script type="text/javascript">
$(function(){
	$('form[name=adminform]').submit(function(){
		if($('#userid').val()==''){
			alert('아이디를 입력해주세요.');
			$('#userid').focus();
			return false;
		}else if($('#pwd').val()==''){
			alert('비밀번호를 입력해주세요.');
			$('#pwd').focus();
			return false;
		}
	});
});
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 로그인</title>
</head>
<body style="background:#f7f7f7;">
<div class="AdminLoginContainer">
	<div class="col-div-50-100" style="padding-top:5.5em; padding-left: 3em; padding-right: 3em;">
		<img alt="" src="<c:url value='/images/adminLogin.png'/>" style="width:100%;">
	</div>
	<div class="col-div-50-100" style="padding:1em; padding-top:6.7em; border-left: 2px solid #b8b8b8; ">
		<form name="adminform" method="post" action="<c:url value='/administrator/login/adminlogin.do'/>" style="width: 100%; text-align: right;">
			<table class="adMinLoginfrm" style="width:90%; text-align: center; ">
				<colgroup>
					<col style="width:35%;">
					<col style="width:*;">
				</colgroup>
				<tbody>
					<tr>
						<th style="font-size:2em; text-align: right;">아이디</th>
						<td style="font-size:2em;"><input id="userid" name="userid" class="one-text" type="text" placeholder=" 아이디를 입력하세요."></td>
						
					</tr>
					<tr>
						<th style="font-size:2em; text-align: right;">비밀번호</th>
						<td style="font-size:2em;"><input id="pwd" name="pwd" class="one-text" type="password" placeholder=" 비밀번호를 입력하세요."></td>
					</tr>
				</tbody>
			</table>
			<br>
			<input class="one-button" type="submit" value="로그인" style="font-size:1.4em;margin-right:3.4em;">
		</form>
	</div>
</div>
</body>
</html>