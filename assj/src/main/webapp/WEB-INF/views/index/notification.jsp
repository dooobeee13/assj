<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.panel-heading img {
		width: 180px;
		height: 72px;
	}
	
	.compName {
		font-weight: bold;
		font-size: 1.2em;
	}
	
	.notiContent {
		overflow: hidden;
   		text-overflow: ellipsis;
   		display: -webkit-box;
  		-webkit-line-clamp: 2;
  		-webkit-box-orient: vertical;  
	}
	
	.notiItem {
		height: 198px;
		margin-bottom: 0;
	}
	
	.sidemargin0 {
		margin-right: 0;
		margin-left: 0;
	}
	
	.notiItem:hover {
		border: 2px solid red;
	}
</style>
<div class="row sidemargin0">
	<c:forEach begin="1" end="8">
		<div class="panel panel-default col-md-3 notiItem">
			<div class="panel-heading notiTitle text-center"><img src="//img11.jobkorea.kr/Images/Logo/180/u/t/utopia10_180.gif?20171213170002" alt="교보정보통신" ></div>
			<div class="panel-body">
				<div class="compName">교보정보통신</div>
				<div class="notiContent">교보정보통신 각 부문별 경력 직원 모집</div>
				<div class="deadLine"><span class="label label-warning">D-8</span></div>
			</div>
		</div>
	</c:forEach>
</div>