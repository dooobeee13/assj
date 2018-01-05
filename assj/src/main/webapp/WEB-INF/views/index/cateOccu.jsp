<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.searchCategory.occu {
		height: 435px;
		width: 600px;
		position: absolute; 
		z-index: 1; 
		background: #fff; 
		text-align: left;
	}
	
	.searchCategory.occu .cateTitle {
		border-bottom: 1px solid lightgray;
		padding: 10px 0 10px 20px;
	}
	
	.searchCategory.occu .depth1{
		width: 200px;
		border-right: 1px solid lightgray;
	}
	
	.searchCategory.occu .tabContent {
		display: none;
		top: 41px;
		position: absolute;
	    left: 200px;
	    width: 400px;
	    height: 460px;
	    padding-left: 0;
	}
	
	.searchCategory.occu .tabContent li {
		list-style: none;
		height: 30px;
		padding: 5px 20px;
	}
	
	.searchCategory.occu .tabContent li span {
		font-weight: normal;
		color: black;
	}
	
	.searchCategory.occu .tab {
		height: 30px;
		padding: 5px 20px;
	}
	
	/* .searchCategory.occu .tab:hover {
		background: #e6e6ef;
		font-weight: bold;
		color: #3399ff;
	} */
	.searchCategory.occu .tab.active {
		background: #e6e6ef;
		font-weight: bold;
		color: #3399ff;
	}
</style>
<script>
	$(function(){
		$('.tab').hover(function(){
			var id = $(this).data('target');
			$(this).parent().find('.tabContent').hide();
			$('#' + id).show();
			$(this).siblings().removeClass('active');
			$(this).addClass('active');
		}, function(){
			//var id = $(this).data('target');
			//$('#' + id).hide();
		});
	});
</script>

<div class="row searchCategory occu">
	<div class="cateTitle"><a href="#" style="color: black;">직업별홈</a></div>
	<div class="depth1">
		<div class="">
			<c:set var="topCateogryList" value="${map['topCategory']}" />
			<c:forEach var="vo" items="${topCateogryList}" varStatus="status">
				<div class="tab <c:if test="${status.first}">active</c:if>" data-target="tcOccu${vo.occuNo}">
					${vo.occuName}
					<ul class="tabContent" id="tcOccu${vo.occuNo}" <c:if test="${status.first}">style="display:block"</c:if>>
					
					<c:set var="subKey" value="subCategory-${vo.occuNo}"/>
					<c:forEach var="sub" items="${map[subKey]}">
						<li class="col-md-6">
							<a href="<c:url value="/hireInfo/home.do?type=occu&val=${stat.first ? vo.occuNo : sub.occuNo}"/>"><span>${sub.occuName}</span></a>
						</li>
					</c:forEach>
					</ul>
				</div> 
			</c:forEach>
		</div>
	</div>
</div>