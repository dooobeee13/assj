<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		산업(업종)<span class="glyphicon glyphicon-chevron-down"></span>
	</div>
	<%-- <div class="sCateName thinScroll">
		<ul>
			<c:set var="topCateogryList" value="${map['topCategory']}" />
			<c:forEach var="vo" items="${topCateogryList}">
				<li>${vo.secName}</li>
			</c:forEach>
		</ul>
	</div> --%>

	<div class="detail thinScroll">
		<div class="row tab">
			<div class="col-md-5">
				<div class="category thinScroll top">
					<ul>
						<c:set var="topCateogryList" value="${map['topCategory']}" />
						<c:forEach var="vo" items="${topCateogryList}">
							<li class="col-md-6"><a href="#aTabs-${vo.secNo}"><label class="chklabel">${vo.secName}</label></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-md-7">
				<div class="category thinScroll sub">
					<c:forEach var="top" items="${topCateogryList}">
						<c:set var="subKey" value="subCategory-${top.secNo}"/>
						<ul id="aTabs-${top.secNo}">
							<c:forEach var="vo" items="${map[subKey]}">
								<li class="col-md-6"><input type="checkbox" class="sc_chk" id="sectors-${vo.secNo}"> 
									<label class="chklabel" data-name="${top.secName}>${vo.secName}" for="sectors-${vo.secNo}">
										<span>${vo.secName}</span>
									</label>
								</li>
							</c:forEach>
						</ul>
					</c:forEach>
				</div>
			</div>
		</div>
		<script>
			/* $('.tab').tabs({active: -1}); */
		</script>
	</div>
