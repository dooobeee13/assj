<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>슬라이드 이미지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<script type="text/javascript">
	$(document).ready(function(){
		$('.carousel').carousel({interval:3000})
	});
</script>
<style type="text/css">
	#slide {
	    position:absolute;
	    width: 350px;
	    height: 360px;
	    background: #ebecee;
	    overflow-x: hidden;
	    overflow-y: auto;
  	}
</style>
</head>
<body>
	