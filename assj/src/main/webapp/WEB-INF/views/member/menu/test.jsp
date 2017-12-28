<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table>
	<tr>
		<th>제목</th>
	</tr>
	<c:forEach var="vo" items="${list}">
		<tr>
			<td>${vo.title}</td>
		</tr>
	</c:forEach>
</table>

<div class="divPage">
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 ◀ -->
	<c:if test="${pagingInfo.firstPage>1 }">
		<a href="#" onclick="pageFunc(${pagingInfo.firstPage-1})">		
			<img src="<c:url value='/images/first.JPG'/>">
		</a>	
	</c:if>	
	
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage}" 
		end="${pagingInfo.lastPage}">
		<c:if test="${i==pagingInfo.currentPage}">
			<span style="font-weight:bold;color:blue">${i }</span>
		</c:if>
		<c:if test="${i!=pagingInfo.currentPage}">
			<a href="#" onclick="pageFunc(${i })">
			[${i }]</a>
 		</c:if>				
	</c:forEach>
	
	<!-- 다음 블럭으로 이동 ▶ -->
	<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage}">
		<a href="#" onclick="pageFunc(${pagingInfo.lastPage+1})">	
			<img src="<c:url value='/images/last.JPG'/>">
		</a>	
	</c:if>
	
	<!--  페이지 번호 끝 -->
</div>