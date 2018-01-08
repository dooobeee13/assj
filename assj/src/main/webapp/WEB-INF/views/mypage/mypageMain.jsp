<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 메인</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#mypage ul li:eq(0)').attr("class","active");
		
		$('#mypage ul li').click(function(){
			$('#mypage ul li').attr("class","");
			$(this).attr("class","active");
		});
		
		
		$('#mypage ul li:eq(0)').click(function(){
			$('iframe').prop("src","<c:url value='/member/menu/frameScrap.do'/>")
		});
		$('#mypage ul li:eq(1)').click(function(){
			$('iframe').prop("src","<c:url value='index.do'/>")
		});
	});
</script>
<style type="text/css">
	table{
		border-collapse: collapse;
		width :80%;
		margin:0 auto;
		text-align: center;
	}
	fieldset {
		background-color:#ffff;
    }
    iframe{
    	width:100%;
    	height:500px;

    }
</style>
</head>
<body>
<c:import url="../index/top.jsp" />

<div class="container">
<div class="row">
<c:import url="mypageSide.jsp"></c:import>
	<div class="col-md-9">
      <fieldset>
      <br>
      		<table>
      			<colgroup>
      				<col style="width:33%">
      				<col style="width:33%">
      				<col style="width:33%">
      			</colgroup>
      				<tr>
      					<td><h1> 1  </h1></td>
      					<td><h1> 2 </h1></td>
      					<td><h1> 3 </h1></td>
      				</tr>
      				<tr>
      					<td>이력서 갯수</td>
      					<td>입사지원 횟수</td>
      					<td>스크랩</td>
      				</tr>
      		</table>     		
      <br>
			 <div id="mypage">
					<ul class="nav nav-tabs nav-justified">
						<li><a id="step1">최근공고</a></li>
						<li><a id="step2">이력서</a></li>
						<li><a id="step3">뉴스</a></li>
						<li><a id="step4">스크랩한 공고</a></li>
					</ul>
			 </div>
			
      </fieldset>  
      </div>
 </div>
 </div>
 <c:import url="../index/footer.jsp" />
</body>
</html>