<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
<!DOCTYPE html>
<html>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<script type="text/javascript">

/* $(function(){
	
	$('.header').click(function(){
		
	$.ajax({
		url:"<c:url value='/news_Info/news_data.do'/>",
		success:function(res){
			var intputdata="";
			var index=1;
			var line1="";
			var line2="";
			var line3="";
			var line4="";
			
			$.each(res, function(idx, items){
				intputdata = "<div class='col-y'><div class='col-title'>"+this.NEWS_TITLE+
				"</div><img src='<c:url value='/imageTest/52f7907d0ff2709292cb.jpg'/>' style='width:100%'></div>";
				
				if(index==1){
					line1+=intputdata
					index++;
				}else if(index==2){
					line2+=intputdata
					index++;
				}else if(index==3){
					line3+=intputdata
					index++;
				}else if(index==4){
					line4+=intputdata
					index=1;
				}
			});
			$('.line-1').html(line1);
			$('.line-2').html(line2);
			$('.line-3').html(line3);
			$('.line-4').html(line4);
			
		},
		error:function(request,status,error){
		    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		   }

	});
	});
}); */
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background:#f7f7f7;">
<%@include file="../index/top.jsp" %>
<link rel="stylesheet" href="<c:url value='/css/newsInfo.css'/>">
<div style="margin:0 auto; width:900px;">
	<div class="header"><img src="<c:url value='/icon/newsInfos.png'/>">&nbsp; 공 채 뉴 스</div>
	<div class="row">
	  <div class="column line-1">
	    	<c:forEach var="i" begin="0" end="${fn:length(list) }" step="4">
					<c:set var="map" value="${list[i] }"></c:set>
						<div class="col-y"><div class="col-title">${map['NEWS_TITLE'] }</div>
						<img src="<c:url value='/imageTest/ead9ab2d1820981da4208a868f04c3b4715c84df.jpg'/>" style="width:100%"></div>
			</c:forEach>
	  </div>
	  <div class="column line-2">
	    	<c:forEach var="i" begin="1" end="${fn:length(list) }" step="4">
					<c:set var="map" value="${list[i] }"></c:set>
						<div class="col-y"><div class="col-title">${map['NEWS_TITLE'] }</div>
						<img src="<c:url value='/imageTest/ead9ab2d1820981da4208a868f04c3b4715c84df.jpg'/>" style="width:100%"></div>
			</c:forEach>
	  </div>
	 <div class="column line-3">
	   	<c:forEach var="i" begin="2" end="${fn:length(list) }" step="4">
					<c:set var="map" value="${list[i] }"></c:set>
						<div class="col-y"><div class="col-title">${map['NEWS_TITLE'] }</div>
						<img src="<c:url value='/imageTest/ead9ab2d1820981da4208a868f04c3b4715c84df.jpg'/>" style="width:100%"></div>
			</c:forEach>
	  </div>
	   <div class="column line-4">
	   		<c:forEach var="i" begin="3" end="${fn:length(list) }" step="4">
					<c:set var="map" value="${list[i] }"></c:set>
						<div class="col-y"><div class="col-title">${map['NEWS_TITLE'] }</div>
						<img src="<c:url value='/imageTest/ead9ab2d1820981da4208a868f04c3b4715c84df.jpg'/>" style="width:100%"></div>
			</c:forEach>
	  </div>
</div>
<%@include file="../index/footer.jsp" %>
</body>
</html>