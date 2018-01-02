<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.searchCategory.area {
		height: 500px;
		width: 600px;
		position: absolute; 
		z-index: 1; 
		background: #fff; 
		text-align: left;
	}
	
	.searchCategory.area .cateTitle {
		border-bottom: 1px solid lightgray;
		padding: 10px 0 10px 20px;
	}
	
	.searchCategory.area .depth1{
		width: 150px;
		border-right: 1px solid lightgray;
	}
	
	.searchCategory.area .tabContent {
		display: none;
		top: 41px;
		position: absolute;
	    left: 150px;
	    width: 450px;
	    height: 460px;
	    padding-left: 0;
	}
	
	.searchCategory.area .tabContent li {
		list-style: none;
		height: 25px;
		padding-left: 20px;
		padding-top: 3px;
	}
	
	.searchCategory.area .tabContent li span {
		font-weight: normal;
		color: black;
	}
	
	.searchCategory.area .tab {
		height: 25px;
		padding-left: 20px;
		padding-top: 3px;
	}
	
	.searchCategory.area .tab.active {
		background: #e6e6ef;
		font-weight: bold;
		color: #3399ff;
	}
</style>

<div class="row searchCategory area">
	<div class="cateTitle"><a href="#" style="color: black;">지역별홈</a></div>
	<div class="depth1">
		<div class="">
			<c:set var="topCateogryList" value="${map['topCategory']}" />
			<c:forEach var="vo" items="${topCateogryList}" varStatus="status">
				<div class="tab <c:if test="${status.first}">active</c:if>" data-target="tcArea${vo.areaNo}">
					${vo.areaName}
					<ul class="tabContent" id="tcArea${vo.areaNo}" <c:if test="${status.first}">style="display:block"</c:if>>
					
					<c:set var="subKey" value="subCategory-${vo.areaNo}"/>
					<c:forEach var="sub" items="${map[subKey]}">
						<li class="col-md-4">
							<a href="#"><span>${sub.areaName}</span></a>
						</li>
					</c:forEach>
					</ul>
				</div> 
			</c:forEach>
		</div>
	</div>
</div>