<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		경력<span class="glyphicon glyphicon-chevron-down"></span>
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<%-- <c:forEach var="vo" items="${list}">
				<li>${vo.careerName}</li>
			</c:forEach> --%>
			<li>신입</li>
			<li>1~3년</li>
			<li>4~6년</li>
			<li>7~9년</li>
			<li>10~15년</li>
			<li>16~20년</li>
			<li>21년 이상</li>
			<li>경력무관</li>
			<li><input class="careerInput" type="text" maxlength="2"> ~ <input class="careerInput" type="text" maxlength="2"> 년</li>
		</ul>
	</div>

	
