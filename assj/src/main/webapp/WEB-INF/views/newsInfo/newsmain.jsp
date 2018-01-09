<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
<style type="text/css">
a {
	color: #000;
}

.mask {
	width: 100%;
	height: 100%;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 20;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
}

#modalLayer {
	display: none;
	position: absolute;
	left: 50%;
	top: 20%;
}

#modalLayer .modalContent {
	width: 400px;
	padding: 5px;
	border: 1px solid #ccc;
	position: absolute;
	left: 50%;
	top: 20%;
	transform: translateX(-25%);
	z-index: 20;
	background: #fff;
	border-radius: 10px;
}

#modalLayer .modalContent button {
	position: absolute;
	right: 0;
	top: 0;
	cursor: pointer;
}

.bgLayer {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 10;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background:#f7f7f7;">

<%@include file="../index/top.jsp" %>
<script type="text/javascript">
$(function(){
	var modalLayer = $("#modalLayer");
	var modalLink = $(".modalLink");
	var modalCont = $(".modalContent");
	var marginLeft = modalCont.outerWidth()/3;
	var marginTop = modalCont.outerHeight()/3; 

	modalLink.click(function(){
		bgLayerOpen();
	  modalLayer.fadeIn("slow");
	  modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
	  $(this).blur();
	  $(".modalContent > a").focus();
	  
	  return false;
	});

	
	
	$('.col-y').click(function(){
		
		var newsNo = $(this).find('input[type=hidden]').val();
		var url = "/imageTest/";
		
		$.ajax({
			url:"<c:url value='/newsInfo/newsdata.do'/>",
			data:{"newsNo":newsNo},
			success:function(data){
				var input = 
					'<table class="col-div-90-90 newsform" style="table-layout:fixed;margin:0 auto; width:100%; height:100%; border:1px solid #b8b8b8;border-style: groove;">'+
				'<colgroup>'+
					'<col style="width: 80%">'+
					'</colgroup>'+
					'<tbody>'+
					'<tr style="height:15%; margin-bottom:1em;">'+
					'<td style="background: #B0CEEC; color:black; height:100%; padding: 12px;;">'+data.newsTitle+'</td>'+
					'</tr>';
					if(data.newsUrl!=" "){
					input+='<tr style="height:40%;">'+
					'<td style="background:white; padding:0"><img width="300px;" style="padding:2px; margin:0 auto; margin-top:30px;margin-bottom:30px; border:2px solid #2e6da4;border-radius:15px" src="${pageContext.request.contextPath}/imageTest/'+data.newsUrl+'"/></td>'+
					'</tr>';
					}
					input+= '<tr style="height:30%;">'+
					'<td style="background:white; padding: 10px;word-break:break-all;">'+data.newsContent+'</td>'+
					'</tr>'+
					'</tbody>'+
					'</table>';
					
					$('.newsDetail').html(input);
					modalLayer.fadeIn("fast");
					modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
					bgLayerOpen();
					$(".closeModal").click(function(){
						  modalLayer.fadeOut("slow");
						  bgLayerClear();
					});
					
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
});
function bgLayerOpen() {
    if(!$('.bgLayer').length) {
        $('<div class="bgLayer"></div>').appendTo($('body'));
    }
    var object = $(".bgLayer");
    var w = $(document).width()+12;
    var h = $(document).height();

    object.css({'width':w,'height':h}); 
    object.fadeIn(500); 
}
function bgLayerClear(){
    var object = $('.bgLayer');
	if(object.length) {
	    object.fadeOut(500, function() {
	   		object.remove();
		});
    }
}
</script>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<link rel="stylesheet" href="<c:url value='/css/newsInfo.css'/>">
<div style="margin:0 auto; width:900px;">
	<div class="header" style="border-radius: 4px 4px 16px 16px;"><img src="<c:url value='/icon/newsInfos.png'/>">&nbsp; 공 채 뉴 스</div>
	<div class="row">
	  <div class="column line-1">
	    	<c:forEach var="i" begin="0" end="${fn:length(list)-1 }" step="4">
					<c:set var="map" value="${list[i] }"></c:set>
						<div class="col-y"><input type="hidden" value="${map['NEWS_NO'] }"><div class="col-title">${map['NEWS_TITLE'] }</div>
						<c:if test="${map['NEWS_URL']!=' ' }">
							 <img src="<c:url value='/imageTest/${map["NEWS_URL"] }'/>" style="width:100%">
						</c:if></div>
			</c:forEach>
	  </div>
	  <div class="column line-2">
	    	<c:forEach var="i" begin="1" end="${fn:length(list)-1 }" step="4">
					<c:set var="map" value="${list[i] }"></c:set>
						<div class="col-y"><input type="hidden" value="${map['NEWS_NO'] }"><div class="col-title">${map['NEWS_TITLE'] }</div>
						<c:if test="${map['NEWS_URL']!=' ' }">
							 <img src="<c:url value='/imageTest/${map["NEWS_URL"] }'/>" style="width:100%">
						</c:if></div>
			</c:forEach>
	  </div>
	 <div class="column line-3">
	   	<c:forEach var="i" begin="2" end="${fn:length(list)-1 }" step="4">
					<c:set var="map" value="${list[i] }"></c:set>
						<div class="col-y"><input type="hidden" value="${map['NEWS_NO'] }"><div class="col-title">${map['NEWS_TITLE'] }</div>
						<c:if test="${map['NEWS_URL']!=' ' }">
							 <img src="<c:url value='/imageTest/${map["NEWS_URL"] }'/>" style="width:100%">
						</c:if></div>
			</c:forEach>
	  </div>
	   <div class="column line-4">
	   		<c:forEach var="i" begin="3" end="${fn:length(list)-1 }" step="4">
					<c:set var="map" value="${list[i] }"></c:set>
						<div class="col-y"><input type="hidden" value="${map['NEWS_NO'] }"><div class="col-title">${map['NEWS_TITLE'] }</div>
						<c:if test="${map['NEWS_URL']!=' ' }">
							 <img src="<c:url value='/imageTest/${map["NEWS_URL"] }'/>" style="width:100%">
						</c:if></div>
			</c:forEach>
	  </div>
</div>
<div id="modalLayer">
  <div class="modalContent" style=" height: auto; padding-bottom:40px;">
  <div style=" margin:0 auto; width:100%; height:90%;">
  	<img class="closeModal"src="<c:url value='/icon/xbutton.png'/>" style="float:right;margin-bottom:1em;width: 22px;">
	  <div class="newsDetail" style="padding:5px; margin:0 auto; width:95%; height:10%;">
	    
	  </div>
  </div>
  </div>
</div>
</div>
<%@include file="../index/footer.jsp" %>
</body>
</html>