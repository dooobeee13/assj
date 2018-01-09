<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<table class="table table-condensed">
	<c:forEach var="notice" items="${noticeList}">
		<tr>
			<td>
				<span class="label 
					<c:if test="${notice.notititle == '공지'}">label-danger</c:if>
					<c:if test="${notice.notititle == '이벤트'}">label-info</c:if>
					<c:if test="${notice.notititle == '오픈'}">label-warning</c:if>
					<c:if test="${notice.notititle == '뉴스'}">label-success</c:if>">${notice.notititle}</span>
			</td>
			<td><a href="/assj/member/menu/noticeDetail.do?no=${notice.no}">${notice.title}</a></td>
			<td><fmt:formatDate value="${notice.regdate}" pattern="yyyy.MM.dd"/></td>
		</tr>
	</c:forEach>
</table>