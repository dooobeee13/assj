<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		직무(직종)<span class="down"></span>
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<c:set var="topCateogryList" value="${map['topCategory']}" />
			<c:forEach var="vo" items="${topCateogryList}">
				<li class="step1" data-no="${vo.occuNo}">${vo.occuName}</li>
			</c:forEach>
		</ul>
	</div>

	<div class="detail thinScroll">
		<div class="row tab">
			<div class="col-md-5" style="border-right: 1px solid #d3d3d3">
				<div class="category thinScroll top">
					<ul>
						<c:forEach var="vo" items="${topCateogryList}" varStatus="status">
							<li class="col-md-6 <c:if test='${status.first}'>selected</c:if>"><a href="#aTabs-${vo.occuNo}"><label class="chklabel">${vo.occuName}</label></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-md-7">
				<div class="category thinScroll sub">
					<c:forEach var="top" items="${topCateogryList}">
						<c:set var="subKey" value="subCategory-${top.occuNo}"/>
						<ul id="aTabs-${top.occuNo}">
							<c:forEach var="vo" items="${map[subKey]}">
								<li class="col-md-6">
									<input type="checkbox" class="sc_chk" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}"> 
									<label class="chklabel" data-name="${top.occuName}>${vo.occuName}" for="occupation-${vo.occuNo}">
										<span>${vo.occuName}</span>
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
