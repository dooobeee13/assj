<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="vo" items="${hnList}" begin="0" end="3">
	<div class="media">
		<div class="media-left">
			<a href="#"> 
				<img src="<c:url value='/images/cmLogo/${vo.compMemberVo.cmLogo}'/>" class="media-object">
			</a>
		</div>

		<div class="media-body">
			<div class="media-heading">
				<a href="#">${vo.hnNotititle }</a> &nbsp;
				<c:if test="${vo.dday == 0}">
				<span class="label label-danger">오늘 마감</span>
				</c:if>
				<c:if test="${vo.dday == 1}">
				<span class="label label-danger">내일 마감</span>
				</c:if>
				<c:if test="${vo.dday > 1}">
				<span class="label label-warning">D - ${vo.dday}</span>
				</c:if>
			</div>
			<div>${vo.compMemberVo.cmName}</div>
			<div style="white-space: nowrap; overflow: hidden;">
				<span class="glyphicon glyphicon-tags" aria-hidden="true"></span>&nbsp;
				<span class="tags">${vo.areaVo.topAreaVo.areaName}</span><span class="tags"><c:if test="${empty vo.careerVo}">경력무관</c:if><c:if test="${!empty vo.careerVo}">${vo.careerVo.careerName}</c:if>
				</span><c:forEach var="tag" items="${vo.occupationList}"><span class="tags">${tag.occuName}</span></c:forEach><c:forEach var="tag" items="${vo.sectorList}" ><span class="tags">${tag.secName}</span></c:forEach>
					
			</div>
		</div>
	</div>
</c:forEach>

	