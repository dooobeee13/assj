<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<title>개인회원 수정</title>
<!-- Bootstrap -->
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
#psMemEdit h1 {
	font-weight: bold;
}

#psMemEdit span {
	color: red;
}

#psMemEdit {
	padding: 20px;
	margin: 0 auto;
	background-color: #ffff;
}

#psMemEdit fieldset {
	width: 750px;
	margin: 0 auto;
	padding: 30px;
	background-color: #dde6f7;
}

#psMemEdit table {
	margin: 0 auto;
	width: 300px;
	text-align: left;
}

#psMemEdit td {
	padding: 8px;
}

 #sidebar-wrapper {
    height: 600px;
 } 
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<c:import url="../../index/top.jsp" />

	<div class="container">
		<div class="row">
			<c:import url="../../mypage/mypageSide.jsp"/>
	
			<!-- 본문 -->
			<div class="col-md-9">
				<div id="psMemEdit">
					<h1>개인정보 수정</h1>
					<br>
					<hr>
					<fieldset>
						<p>
							회원님의 정보를 안전하게 보호하기 위해 <b>비밀번호를 다시 한번 입력</b>해 주시기 바랍니다.
						</p>
						<span>※ 타인에게 노출되지 않도록 주의해 주세요.</span> <br>
						<br>
						<br>
						<h1>비밀번호 재확인</h1>
						<br>
						<br>
						<form name=frm method="post"
							action="<c:url value='/member/edit/psMemEdit.do'/>">
							<table>
								<tr>
									<td><label for="memName">이름</label></td>
									<td><h4>
											<b> <c:if test="${!empty sessionScope.memberVO}">
							${sessionScope.memberVO.memName}(${sessionScope.memberVO.memId})	
						</c:if>
											</b>
										</h4></td>
								</tr>
								<tr>
									<td><label for="memPwd">비밀번호</label></td>
									<td><input type="password" class="form-control"
										id="memPwd" name="memPwd"></td>
								</tr>
								<tr>
									<td colspan="2"><button type="submit"
											class="btn btn-primary btn-lg btn-block">회원확인</button></td>
								</tr>
							</table>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../../index/footer.jsp" />
</body>
</html>
