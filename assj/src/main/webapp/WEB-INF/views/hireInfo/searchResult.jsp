<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
	.notiTable .compName {
		padding-left: 20px;
	}
	
	.notiTable .notiName a {
		overflow: hidden;
	    display: inline-block;
	    font-size: 16px;
	    color: #000;
	    max-width: 95%;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	}
	
	.notiTable .notiName a:focus {
		text-decoration: none;
	}
	
	.notiTable .notiName p {
		color: #999;
		font-size: 12px;
		overflow: hidden;
	    text-overflow: ellipsis;
	    //white-space: nowrap;
	}
	
	.notiTable .notiName button {
		width: 17px;
	    height: 16px;
	    margin-top: 2px;
	    border: 0 none;
	    background: url(/assj/images/sp_list_recruit.png) no-repeat -1px -31px;
	    vertical-align: top;
	    cursor: pointer;
	}
	
	.notiTable .notiName p span {
		margin-right: 10px;
	}
	
	.notiTable .notiName .scrapIcon {
		font-size: 16px;
		top: -2px;
		color: #999;
		cursor: pointer;
	}
	
	.notiTable .empTerms p {
		font-size: 12px;
	}
	
	.notiTable .deadLine .label {
		padding-top: .6em;
		padding-bottom: .6em;
		display: inline-block;
		width: 85%;
	}
</style>
<table class="table table-hover notiTable" summary="전체 채용정보 목록으로 회사명, 제목, 근무조건, 등록일·마감일로 구성되어 있습니다.">
	<colgroup>
		<col width="20%">
		<col width="55%">
		<col width="13%">
		<col width="12%">
	</colgroup>
	<tr>
		<th class="text-center">기업명</th>
		<th class="text-center">제목</th>
		<th class="text-center">근무조건</th>
		<th class="text-center">마감일</th>
	</tr>
	<c:forEach var="vo" items="${list}">
		<tr>
			<td class="compName">${vo.compMemberVo.cmName}</td>
			<td class="notiName">
				<div>
					<strong>
					<a href='<c:url value="/recruit/recruitDetail.do?hnNo=${vo.hnNo}"/>' target="_blank">${vo.hnNotititle}</a> 
					</strong>
					<!-- <span class="glyphicon glyphicon-heart-empty scrapIcon"></span> -->
					<button data-toggle="popover" data-trigger="hover" data-placement="top" data-content="스크랩"></button>
				</div>
				<p>
					<c:forEach var="tag" items="${vo.occupationList}" varStatus="status">
						<c:if test="${!status.first}">,</c:if>${tag.occuName}
					</c:forEach>
					<c:forEach var="tag" items="${vo.sectorList}" varStatus="status">
						<c:if test="${!empty vo.occupationList}">,</c:if>
						<c:if test="${!status.first}">,</c:if>${tag.secName}
					</c:forEach>
				</p>
				<p>
					<span>
					<c:choose>
						<c:when test="${vo.hnExpyearMin != 0 && vo.hnExpyearMax != 0}">
							${vo.hnExpyearMin} ~ ~ ${vo.hnExpyearMax}년
						</c:when>
						<c:when test="${vo.hnExpyearMin != 0 && vo.hnExpyearMax == 0}">
							${vo.hnExpyearMin}년 ↑
						</c:when>
						<c:when test="${vo.hnExpyearMin == 0 && vo.hnExpyearMax != 0}">
							${vo.hnExpyearMax}년 ↓
						</c:when>
						<c:when test="${empty vo.careerVo}">
						경력무관
						</c:when>
						<c:otherwise>
						${vo.careerVo.careerName}
						</c:otherwise>
					</c:choose>
					
					</span> 
					<span>
						<c:if test="${empty vo.educationVo}">
						학력무관
						</c:if>
						<c:if test="${!empty vo.educationVo}">
						${vo.educationVo.eduRemark}↑
						</c:if>
					</span> 
					<span>
						${vo.areaVo.topAreaVo.areaName} 
						<c:if test="${!empty vo.areaVo.topAreaVo}">&gt;</c:if> 
						${vo.areaVo.areaName}
					</span>
				</p>
			</td>
			<td class="text-center empTerms">
				<p>
				<c:forEach var="empType" items="${vo.empTypeList}" varStatus="status">
					<c:if test="${!status.first}">· </c:if>${empType.etName}
				</c:forEach>
				</p>
				<p>
					<c:choose>
						<c:when test="${vo.hnSalStart != 0 && vo.hnSalEnd != 0 }">
							${vo.hnSalStart}~${vo.hnSalEnd}만원
						</c:when>
						<c:when test="${vo.hnSalStart != 0 && vo.hnSalEnd == 0 }">
							${vo.hnSalStart}만원 이상
						</c:when>
						<c:when test="${vo.hnSalStart == 0 && vo.hnSalEnd != 0 }">
							${vo.hnSalEnd}만원 이하
						</c:when>
						<c:otherwise>
							회사내규에 따름
						</c:otherwise>
					</c:choose>
				</p>
			</td>
			<td class="text-center deadLine">
				<div style="margin-bottom: 5px">
					<c:if test="${vo.hnHows == '온라인' }">
						<span class="label label-warning">즉시지원</span>
					</c:if>
					<c:if test="${vo.hnHows == '홈페이지' }">
						<span class="label label-info">홈페이지 지원</span>
					</c:if>
				</div>
				<div>~<fmt:formatDate value="${vo.hnDeadline}" pattern="MM/dd(E)"/></div>
			</td>
		</tr>
	</c:forEach>
</table>
<script>
	$('[data-toggle="popover"]').popover();   
</script>