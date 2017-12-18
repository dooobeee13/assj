<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		산업(업종)<span class="glyphicon glyphicon-chevron-down"></span>
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<c:set var="topCateogryList" value="${map['topCategory']}" />
			<c:forEach var="vo" items="${topCateogryList}">
				<li>${vo.secName}</li>
			</c:forEach>
		</ul>
	</div>

	<div class="detail"
		style="margin-left: -101%; width: 403%; height: 300px; background: #fff; z-index: 1;">
		<div class="row tab">
			<div class="col-md-3">
				<div class="category thinScroll">
					<ul>
						<c:forEach var="vo" items="${topCateogryList}">
							<li><a href="#aTabs-${vo.secNo}">${vo.secName}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-md-9">
				<div class="category thinScroll">
					<c:forEach var="top" items="${topCateogryList}">
						<c:set var="subKey" value="subCategory-${top.secNo}"/>
						<ul id="aTabs-${i.secNo}">
							<c:forEach var="vo" items="${map[subKey]}">
								<li>${vo.secName}</li>
							</c:forEach>
						</ul>
					</c:forEach>
				</div>
			</div>
		</div>
		<script>
			$('.tab').tabs();
		</script>
	</div>
