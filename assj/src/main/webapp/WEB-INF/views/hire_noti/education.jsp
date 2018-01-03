<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<td>*학력</td>
<td>
<label class="radio-inline" for="education0">
	<input type="radio" id="education0" name="eduNo" checked="checked" value="0">
		학력무관
	</label>
<c:forEach var="vo" items="${list}">
	<label class="radio-inline" for="education${vo.eduNo}">
	<input type="radio" id="education${vo.eduNo}" name="eduNo" value="${vo.eduNo}">
		${vo.eduName}
	</label>
</c:forEach>
</td>

