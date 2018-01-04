<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<?xml version="1.0" encoding="UTF-8"?>
<result>
<size>${pagingInfo.totalRecord}</size>
<html>
<![CDATA[
<table class='table table-hover'>

		<c:if test='${empty list}'>
			<tr>
				<td colspan='4'>공지사항이 없습니다.</td>
			</tr>
		</c:if>
		
		<c:if test='${!empty list}'>
			<tr>
				<th>번호</th>
				<th>구분</th>
				<th>제목</th>
				<th>등록일</th>
			</tr>
			<c:forEach var='map' items='${list}'>
				<tr>
					<td>${map.NO}</td>
					<td><c:if test='${map.NOTITITLE=="공지"}'>
							<span style='color: red'>${map.NOTITITLE}</span>
						</c:if> <c:if test='${map.NOTITITLE=="이벤트"}'>
							<span style='color: blue'>${map.NOTITITLE}</span>
						</c:if> <c:if test='${map.NOTITITLE=="오픈"}'>
							<span style='color: orange'>${map.NOTITITLE}</span>
						</c:if> <c:if test='${map.NOTITITLE=="뉴스"}'>
							<span style='color: green'>${map.NOTITITLE}</span>
						</c:if></td>
					<td><a
						href='<c:url value="/member/menu/countUpdate.do?no=${map.NO}"/>'>${map.TITLE}</a></td>
					<td><fmt:formatDate value='${map.REGDATE}'
							pattern='yyyy-MM-dd' /></td>
				</tr>
			</c:forEach>
		</c:if>
</table>

<div class='divPage'>
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 ◀ -->
	<c:if test='${pagingInfo.firstPage>1 }'>
		<a href='#' onclick='pageFunc(${pagingInfo.firstPage-1})'>		
			<img src='<c:url value="/images/first.JPG"/>'>
		</a>	
	</c:if>	
	
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var='i' begin='${pagingInfo.firstPage}' 
		end='${pagingInfo.lastPage}'>
		<c:if test='${i==pagingInfo.currentPage}'>
			<span style='font-weight:bold;color:blue'>${i }</span>
		</c:if>
		<c:if test='${i!=pagingInfo.currentPage}'>
			<a href='javascript:void(0)' onclick='pageFunc(${i})'>
			[${i}]</a>
 		</c:if>				
	</c:forEach>
	<script>
		function pageFunc(currentPage) {
			var searchCondition = $('#searchCondition').val();
			var searchKeyword = $('#searchKeyword').val();
			$.step(${param.notititleNo},currentPage, searchKeyword, searchCondition);
		}
	</script>
	
	<!-- 다음 블럭으로 이동 ▶ -->
	<c:if test='${pagingInfo.lastPage < pagingInfo.totalPage}'>
		<a href='#' onclick='pageFunc(${pagingInfo.lastPage+1})'>	
			<img src='<c:url value="/images/last.JPG"/>'>
		</a>	
	</c:if>
	
	<!--  페이지 번호 끝 -->
</div>]]>
</html></result>