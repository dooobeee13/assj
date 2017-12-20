<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		전공<span class="glyphicon glyphicon-chevron-down"></span>
	</div>
	

	<div class="detail" style="margin-left: -202%">
		<div class="row tab">
			<div class="col-md-3">
				<div class="category thinScroll top">
					<ul>
						<c:set var="topCateogryList" value="${map['topCategory']}" />
						<c:forEach var="vo" items="${topCateogryList}">
							<li style="position: relative;"><a href="#aTabs-${vo.majorNo}"><label class="chklabel">${vo.majorName}</label></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-md-9">
				<div class="category thinScroll sub">
					<c:forEach var="top" items="${topCateogryList}">
						<c:set var="subKey" value="subCategory-${top.majorNo}"/>
						<ul id="aTabs-${top.majorNo}">
							<c:forEach var="vo" items="${map[subKey]}">
								<li class="col-md-4">
									<input type="checkbox" class="sc_chk" id="major-${vo.majorNo}" name="major" value="${vo.majorNo}"> 
									<label class="chklabel" data-name="${top.majorName}>${vo.majorName}" for="major-${vo.majorNo}">
										<span>${vo.majorName}</span>
									</label>
								</li>
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
