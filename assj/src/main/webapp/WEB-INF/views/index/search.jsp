<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${param.value} 검색결과</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	.searchWrap {
		margin-bottom: 20px;
	}
	.searchWrap .shortcut {
		border-bottom: 1px solid lightgray
	}
	.searchWrap .shortcut ul {
		padding-left: 0;
	}
	.searchWrap .shortcut ul li{
		list-style: none;
		margin-bottom: 10px;
	}
	
	.searchWrap .shortcut .col-sm-2 {
		padding-left: 30px;
	}
	
	.searchWrap .shortcut em {
		display: inline-block;
	    box-sizing: border-box;
	    height: 18px;
	    padding: 1px 8px;
	    margin-right: 8px;
	    border: 1px solid #afc0ff;
	    border-radius: 12px;
	    font-size: 11px;
	    color: #5b77ff;
	    text-align: center;
	    line-height: 13px;
	    font-style: normal;
	}
	
	.searchWrap .recruitInfo {
		margin-bottom: 30px;
	}
	
	.searchWrap .news {
		border-top: 1px solid lightgray;
	}
	
	.searchWrap .recruitInfo, .searchWrap .news {
		padding-top: 30px;
	}
	
	.searchWrap .recruitInfo p,  .searchWrap .news p{
		padding-left: 10px;
		font-size: 1.2em;
	}
	
	.searchWrap .gray {
		font-size: 0.9em;
		color: #888;
	}
	
	.searchWrap .tag:nth-child(n+2):before {
		display: inline-block;
	    content: '';
	    width: 2px;
	    height: 10px;
	    background-color: #ddd;
	    position: relative;
	    left: -2px;
	    top: 0px;
	}
	
	.searchWrap .tag {
		font-size: 0.9em;
		color: #888;
	}
	
	.searchWrap .hnItem {
		margin-bottom: 30px;
	}
	
	.searchWrap .hnItem .keyword{
		font-size: 1em;
	}
	
	.searchWrap .hnItem p {
		margin-bottom: 0;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
		width: 100%
	}
	
	.searchWrap strong.title {
		font-size: 25px;
	}
	
	.searchWrap .media-body p {
		margin-top: 20px;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
		width: 100%;
	}
	
	.searchWrap .media {
		margin-bottom: 30px;
	}
	
	.searchWrap .media-heading {
		padding-top: 10px;
	}
	
	.searchWrap .hntitle {
		font-size: 1.2em;
	}
</style>
</head>
<body>
	<c:import url="top.jsp" />
	<div class="container searchWrap">
		<c:if test="${!empty occuList || !empty secList}">
		<div class="row shortcut">
			<div class="col-sm-2">
				<strong>바로가기</strong>
			</div>
			<div class="col-sm-10">
				<ul>
					<c:forEach var="vo" items="${occuList}">
						<li><em>직종</em> <a href="/assj/hireInfo/home.do?type=occu&val=${vo.occuNo}">${vo.topOccuName} > ${vo.occuName}</a></li>
					</c:forEach>
					<c:forEach var="vo" items="${secList}">
						<li><em>업종</em> <a href="/assj/hireInfo/home.do?type=sec&val=${vo.secNo}">${vo.topSecName} > ${vo.secName}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		</c:if>
		
		<div class="recruitInfo">
			<p><strong class="title">채용정보</strong>  <span class="gray">총${fn:length(hnList)}건</span></p>	
			<c:forEach var="vo" items="${hnList}">
				<div class="hnItem">
					<p>씨티에스보안(주)</p>
					<p><a href='<c:url value="/recruit/recruitDetail.do?hnNo=${vo.hnNo}"/>' target="_blank" class="hntitle">${vo.hnNotititle}</a> <span class="gray"><fmt:formatDate value="${vo.hnStart}" pattern="MM/dd"/>~<fmt:formatDate value="${vo.hnDeadline}" pattern="MM/dd"/></span></p> 
					<p>
						<span class="tag">
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
						<span class="tag">
							<c:if test="${empty vo.educationVo}">
							학력무관
							</c:if>
							<c:if test="${!empty vo.educationVo}">
							${vo.educationVo.eduRemark}↑
							</c:if>
						</span> 
						<span class="tag">
							<c:forEach var="empType" items="${vo.empTypeList}" varStatus="status">
								<c:if test="${!status.first}">· </c:if>${empType.etName}
							</c:forEach>
						</span> 
						<span class="tag">
							${vo.areaVo.topAreaVo.areaName} > ${vo.areaVo.areaName}
						</span></p>
					<p class="keyword"><span class="glyphicon glyphicon-tags" aria-hidden="true"></span> 
						<c:forEach var="tag" items="${vo.occupationList}" varStatus="status">
							<c:if test="${!status.first}">,</c:if>${tag.occuName}
						</c:forEach>
						<c:forEach var="tag" items="${vo.sectorList}" varStatus="status">
							<c:if test="${!empty vo.occupationList}">,</c:if>
							<c:if test="${!status.first}">,</c:if>${tag.secName}
						</c:forEach>
					</p>
				</div>
			</c:forEach>
		</div>
		
		<div class="news">
			<p><strong class="title">채용뉴스</strong> <span class="gray">총${fn:length(newsList)}건</span></p>	
			<c:forEach var="vo" items="${newsList}">
			<div class="media">
			  <div class="media-left">
			    <img src="/assj/images/noimage2.gif" class="media-object" style="width:150px">
			  </div>
			  <div class="media-body">
			    <h3 class="media-heading"><a href="/assj/newsInfo/newsmain.do">${vo.newsTitle}</a></h3>
			    <p>${vo.newsContent}</p>
			  </div>
			</div>
			</c:forEach>
		</div>
	</div>
	<c:import url="footer.jsp" />
</body>
</html>