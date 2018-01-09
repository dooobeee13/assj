<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 이력서 현황</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<script type="text/javascript">

function delchk(){
	return confirm("이력서를 삭제하시겠습니까?");
}

</script>
<style type="text/css">
	.container fieldset{
		padding:50px;
		background-color:#ffff;
	}
	.container table th{
		background-color:#dedbdb;
		text-align:center;
	}
	.container table td{
		text-align:center;
	}
</style>
</head>
<body>

<c:import url="../index/top.jsp" /> 





<div class="container">
   
   <div class="row">
   
<c:import url="../mypage/mypageSide.jsp"></c:import>
   
   		<div class="col-lg-9 col-md-9">
   		<fieldset>
   			<h1>이력서현황</h1>
   			<br>
   			<hr>
         	<table class="table table hover">
			<colgroup>
				<col style="width:*%">
				<col style="width:16%">
				<col style="width:16%">
				<col style="width:16%">
			</colgroup>		
		<thead>
			<tr>
				<th>이력서 제목</th>
				<th>첨부파일</th>
				<th>인재정보 등록</th>
				<th>관리</th>
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
						<td><a href="#" 
					onclick="window.open('<c:url value='/resume/resumeView.do?resumeNo=${vo.resumeNo}'/>','new','resizable=no','width=300px','height=500');return false" 
						class="goResumeDetail">${vo.resumeTitle}</a></td>					
						<td>1</td>					
						<td>on / off</td>					
						<td><a href="<c:url value='/resume/resumeUpdate.do?resumeNo=${vo.resumeNo }' />" >수정</a> / 
						<a href="<c:url value='/resume/resumeDelete.do?resumeNo=${vo.resumeNo }' />" onclick="return delchk();" >삭제</a></td>
					</tr>
				</c:forEach>
			</c:if>
			</tbody>
   			</table>
   			</fieldset>
        </div>
   </div>  	
 
 
</div>


	<c:import url="../index/footer.jsp" /> 

</body>
</html>