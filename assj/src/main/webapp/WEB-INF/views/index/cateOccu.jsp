<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<div class="row searchCategory"
	style="position: absolute; z-index: 1; background: #fff; width: 600px">
	<div class="panel panel-default col-md-4">
		<div class="panel-heading">지역별</div>
		<div class="panel-body">
			<c:forEach begin="1" end="5">
				<div>서울</div> 
			</c:forEach>
		</div>
	</div>
	<div class="panel panel-default col-md-8">
		<div class="panel-heading">직업별(직종)</div>
		<div class="panel-body">
			<!-- <span>경영·사무</span> <span>생산·제조</span> <span>건설</span> <span>영업·고객상담</span>
			<span>IT·인터넷</span> <span>유통·무역</span> <span>디자인</span> <span>미디어</span>
			<span>서비스</span> <span>교육</span> <span>의료</span> <span>전문직</span> <span>특수계층·공공</span> -->
		</div>
	</div>
	

</div>