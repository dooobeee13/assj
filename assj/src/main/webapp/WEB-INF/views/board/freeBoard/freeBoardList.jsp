<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<script type="text/javascript">

</script>
</head>
<body>

<c:import url="../../index/top.jsp" /> 





<div class="container">
   
   <div class="row">
   
<c:import url="../boardSide.jsp"></c:import>
   
   		<div class="col-lg-9 col-md-9">
         	<table class="table">
			<colgroup>
				<col style="width:10%">
				<col style="width:40%">
				<col style="width:15%">
				<col style="width:15%">
				<col style="width:10%">
				<col style="width:10%">
			</colgroup>		
		<thead>
			<tr>
				<th scope="col">글 번호</th>
				<th scope="col">제목</th>
				<th scope="col">글쓴이</th>
				<th scope="col">등록일</th>
				<th scope="col">조회수</th>
				<th scope="col">추천</th>
			</tr>	
		</thead>
		<tbody>
			<c:if test="${empty list}">
			<tr>
				<td colspan="4" class="align_center">등록된 글이 없습니다.</td>
			</tr>
			</c:if>
			<c:if test="${!empty list}">
				<c:forEach var="map" items="${list}">
					<tr>
						<td>${map['FB_NO'] }</td>					
						<td><a href="<c:url value="/board/freeBoardView.do?fbNo=${map['FB_NO'] }" />">${map['FB_TITLE'] }</a></td>					
						<td>${map['MEM_NAME'] }</td>
						<fmt:formatDate var="regdate" value="${map['FB_REGDATE'] }" pattern="yyyy-MM-dd"/>					
						<td>${regdate }</td>
						<td>${map['FB_VIEW'] }</td>
						<td>${map['FB_RECM'] }</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
   			</table>
   			<div class="divBtn">
    <a href="<c:url value='/board/freeBoardWrite.do'/>">글쓰기</a>
</div>
        </div>
   </div>  	
 
 
</div>


	<c:import url="../../index/footer.jsp" /> 

</body>
</html>