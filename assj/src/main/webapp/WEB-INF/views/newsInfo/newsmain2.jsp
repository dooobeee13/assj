<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<script type="text/javascript" src="jQuery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var parentoff = $('.innercontainer').offset();
	var avgWidth = $('.innercontainer').width()/5;
	
	$('.innercontainer').append("<div class='items' style='left : 19%; width:"+(avgWidth)+"px;height:340px;'>첫번째 요소</div>");
	$('.innercontainer').append("<div class='items' style='left : 50%; transform:translateX(-50%); width:"+avgWidth+"px;height:340px;'>두번째 요소</div>");
	$('.innercontainer').append("<div class='items' style='left : 61%;width:"+avgWidth+"px;height:340px;'>세번째 요소</div>");
	
	$('.innercontainer').append("<div class='items' style='left : 19%; top: 360px; width:"+(avgWidth)+"px;height:340px;'>첫번째 요소</div>");
	$('.innercontainer').append("<div class='items' style='left : 50%; top: 360px;transform:translateX(-50%); width:"+avgWidth+"px;height:340px;'>두번째 요소</div>");
	$('.innercontainer').append("<div class='items' style='left : 61%; top: 360px;width:"+avgWidth+"px;height:340px;'>세번째 요소</div>");
	
	$('.innercontainer').append("<div class='items' style='left : 19%; top: 720px; width:"+(avgWidth)+"px;height:340px;'>첫번째 요소</div>");
	$('.innercontainer').append("<div class='items' style='left : 50%; top: 720px;transform:translateX(-50%); width:"+avgWidth+"px;height:340px;'>두번째 요소</div>");
	$('.innercontainer').append("<div class='items' style='left : 61%; top: 720px;width:"+avgWidth+"px;height:340px;'>세번째 요소</div>");

});

$.items=function(data,idx){
	var DivEl = $('<div />',{
		id:'item_'+data.no,
		text:data.content,
		height:'360px',
		'class':'items'
	});
	var topEl;
	
	if(idx%3==0){
		topEl++;
		DivEl.attr('top',topEl*360);
	}

}
</script>
<style type="text/css">
.contatiner{
	position: absolute;
	left:50%;
	transform:translateX(-50%);
	width:900px;
}
.innercontainer{
	position: absolute;
	left:50%;
	transform:translateX(-50%);
	text-align: center;
}
.items{
	position:absolute;
	border:1px solid #f7f7f7;
	background:#F5E1FB;
	
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div class="containers" style="background:blue">
	<div class="title" style="width:98%;height: 200px; margin:0;">
	
	</div>
	<div class="innercontainer" style="width:80%; height:10px; background:red;">

	</div>
</div>
</body>
</html>