<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		기업규모/고용형태<span class="glyphicon glyphicon-chevron-down"></span>
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<c:forEach var="vo" items="${list}">
				<li>${vo.csName}</li>
			</c:forEach>
		</ul>
	</div>
