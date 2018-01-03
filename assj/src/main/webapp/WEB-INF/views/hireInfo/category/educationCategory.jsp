<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		학력
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<c:forEach var="vo" items="${list}">
				<li class="cLi">
					<input type="checkbox" class="sc_chk" name="eduList" value="${vo.eduNo}" id="education-${vo.eduNo}">
					<label class="chklabel" data-name="${vo.eduName}" for="education-${vo.eduNo}"><span>${vo.eduName}</span></label>
				</li>
			</c:forEach>
		</ul>
	</div>
