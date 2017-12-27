<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>

	 <c:import url="../index/top.jsp" /> 

<div class="container">
   
   	
   	<div id="resumeDiv">
   		
   			<table class="table">
			<colgroup>
				<col style="width:60%">
				<col style="width:10%">
				<col style="width:15%">
				<col style="width:*">
			</colgroup>		
		<thead>
			<tr>
				<th scope="col">이력서 제목</th>
				<th scope="col">첨부파일</th>
				<th scope="col">인재정보 등록</th>
				<th scope="col">-</th>
			</tr>	
		</thead>
		<tbody>
			<c:if test="${empty list}">
			<tr>
				<td colspan="4" class="align_center">등록된 이력서가 없습니다.</td>
			</tr>
			</c:if>
			<c:if test="${!empty list}">
				<c:forEach var="vo" items="${list}">
					<tr>
						<td>${vo.resumeTitle}</td>					
						<td>포트폴리오 갯수</td>					
						<td>on / off</td>					
						<td> 수정 / 삭제</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
   			</table>
   		</div>
   	
   	
   	<div id="portDiv">
   		<table class="table">
			<colgroup>
				<col style="width:40%">
				<col style="width:20%">
				<col style="width:15%">
				<col style="width:*">
			</colgroup>		
		<thead>
			<tr>
				<th scope="col">파일명</th>
				<th scope="col">등록/수정일</th>
				<th scope="col">용량</th>
				<th scope="col">-</th>
			</tr>	
		</thead>
		<tbody>
			<c:if test="${empty portList}">
			<tr>
				<td colspan="4" class="align_center">등록된 이력서가 없습니다.</td>
			</tr>
			</c:if>
			<c:if test="${!empty portList}">
				<c:forEach var="portVO" items="${portList}">
					<tr>
						<td>포트폴리오 파일명</td>					
						<td>등록 수정일</td>					
						<td> 22 MB</td>					
						<td> 수정 / 삭제</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
   			</table>
   	</div>
 
</div>


	<c:import url="../index/footer.jsp" /> 

</body>
</html>