<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.news .txBx p {
		overflow: hidden;
   		text-overflow: ellipsis;
   		display: -webkit-box;
  		-webkit-line-clamp: 2;
  		-webkit-box-orient: vertical;  
  		margin-top: 10px;
  		margin-bottom: 20px;
	}
	.news .txBx p a {
  		font-size: 13px;
  		color: black;
	}
	
</style>
<div class="row news">
	<c:forEach begin="1" end="8">
		<div class="col-sm-3 col-xs-6">
			<div>
				<img class="img-responsive"
					src="//file1.jobkorea.co.kr/GoodJob/News/13671-13680/13671/Image.jpg"
					alt='직장인 및 대학생 37.2% "연말이라 우울"'>
			</div>
			<div class="txBx">
				<p><a href="#">직장인 및 대학생 37.2% "연말이라 우울"</a></p>
			</div>
		</div>
	</c:forEach>
</div>