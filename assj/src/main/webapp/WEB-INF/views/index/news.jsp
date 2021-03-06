<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.news .txBx p {
		overflow: hidden;
   		text-overflow: ellipsis;
   		display: -webkit-box;
  		-webkit-line-clamp: 2;
  		-webkit-box-orient: vertical;  
  		margin-top: 10px;
  		margin-bottom: 20px;
	}
	.news .txBx p a {
  		font-size: 13px;
  		color: black;
	}
	
</style>
<div class="row news">
	<c:forEach var="news" items="${newsList}">
		<div class="col-sm-3 col-xs-6">
			<div>
				<a href="<c:url value='/newsInfo/newsmain.do'/>">
					<img class="img-responsive" src=
					<c:if test="${empty news.newsUrl}">
						"<c:url value='/images/noimage2.gif'/>"
					</c:if>
					<c:if test="${!empty news.newsUrl}">
						"<c:url value='/imageTest/${news.newsUrl}'/>"
					</c:if>
					 alt='${news.newsTitle}"'>
				</a>
			</div>
			<div class="txBx">
				<p><a href="<c:url value='/newsInfo/newsmain.do'/>">${news.newsTitle}</a></p>
			</div>
		</div>
	</c:forEach>
</div>