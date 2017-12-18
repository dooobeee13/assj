<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		학력<span class="glyphicon glyphicon-chevron-down"></span>
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<c:forEach var="vo" items="${list}">
				<li>${vo.eduName}</li>
			</c:forEach>
		</ul>
	</div>
