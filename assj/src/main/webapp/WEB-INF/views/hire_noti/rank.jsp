<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="checkbox rankselectDiv">
	<c:forEach var="vo" items="${list}">
		<label class="lb" for="rank-${vo.rankNo}"> 
			<input id="rank-${vo.rankNo}" type="checkbox"  
				name="rankList" value="${vo.rankNo}" data-name="${vo.rankName}"> ${vo.rankName} 
		</label>
	</c:forEach>
	<label class="lb"> <input id="rank-0" type="checkbox" name="rankList" value="0" data-name="면접후결정">면접후결정
	</label>
</div>