<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.notification {
		margin-right: 0;
		margin-left: 0;
	}
	
	.notification .notiTitle {
		background: #fff;
	}

	.notification .panel-heading img {
		width: 180px;
		height: 72px;
	}
	
	.notification .compName {
		font-weight: bold;
		font-size: 1.2em;
	}
	
	.notification .notiContent {
		overflow: hidden;
   		text-overflow: ellipsis;
   		display: -webkit-box;
  		-webkit-line-clamp: 2;
  		-webkit-box-orient: vertical;  
	}
	
	.notification .notiItem {
		height: 198px;
		margin-bottom: 0;
	}
	
	.notification .notiItem:hover {
		border: 2px solid red;
	}
	
	.notification .notiItem a {
		color: black;
		text-decoration: none;
		display: block;
	}
</style>

<div class="row notification">
	<%-- <c:forEach begin="1" end="12">
		<div class="panel panel-default col-md-3 notiItem">
			<div class="panel-heading notiTitle text-center"><img src="//img11.jobkorea.kr/Images/Logo/180/u/t/utopia10_180.gif?20171213170002" alt="교보정보통신" ></div>
			<div class="panel-body">
				<div class="compName">교보정보통신</div>
				<div class="notiContent">교보정보통신 각 부문별 경력 직원 모집</div>
				<div class="deadLine"><span class="label label-warning">D-8</span></div>
			</div>
		</div>
	</c:forEach> --%>
	
	<c:forEach var="vo" items="${hnList}">
		<div class="panel panel-default col-md-3 notiItem">
			<div class="panel-heading notiTitle text-center"><a target="_blank" href='<c:url value="/recruit/recruitDetail.do?hnNo=${vo.hnNo}"/>'><img src="<c:url value='/images/cmLogo/${vo.compMemberVo.cmLogo}'/>" alt="${vo.compMemberVo.cmName}" ></a></div>
			<div class="panel-body">
				<div class="compName"><a target="_blank" href='<c:url value="/recruit/recruitDetail.do?hnNo=${vo.hnNo}"/>'>${vo.compMemberVo.cmName}</a></div>
				<div class="notiContent"><a target="_blank" href='<c:url value="/recruit/recruitDetail.do?hnNo=${vo.hnNo}"/>'>${vo.hnNotititle }</a></div>
				<div class="deadLine">
					<c:if test="${vo.dday == 0}">
					<span class="label label-danger">오늘 마감</span>
					</c:if>
					<c:if test="${vo.dday > 0}">
					<span class="label label-warning">D - ${vo.dday}</span>
					</c:if>
				</div>
			</div>
		</div>
	</c:forEach>
</div>