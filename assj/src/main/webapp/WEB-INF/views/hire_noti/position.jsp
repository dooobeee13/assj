<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
   <div class="checkbox posiselectDiv">
	<c:forEach var="vo" items="${list}">
		<label class="lb" for="position-${vo.positionNo}"> 
			<input id="position-${vo.positionNo}" type="checkbox" value="${vo.positionNo}"  name="positionList"
				data-name="${vo.positionName}"> ${vo.positionName} 
		</label>
	</c:forEach>
	
</div>
	