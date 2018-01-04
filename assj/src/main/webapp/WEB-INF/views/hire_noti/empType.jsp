<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<span class="sp11">고용형태</span>
	<c:forEach var="vo" items="${list}">
		<label class="checkbox-inline" for="empType${vo.etNo}">
		<input type="checkbox" id="empType${vo.etNo}" name="empTypeList" value="${vo.etNo}">
			${vo.etName}
		</label>
	</c:forEach>
	
</div>

