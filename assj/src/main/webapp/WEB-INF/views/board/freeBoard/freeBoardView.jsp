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
<script type="text/javascript" src="<c:url value='/ck/ckeditor/ckeditor.js' />"></script>
<script type="text/javascript">
function delchk(){
	return confirm("해당글을 삭제하시겠습니까?");
}
</script>
<style type="text/css">

.divViewC{float: left; text-align: center;}
</style>
</head>
<body>

<c:import url="../../index/top.jsp" />

	<div class="container">

		<div class="row">

			<c:import url="../boardSide.jsp"></c:import>

			<div class="col-lg-9 col-md-9" style="background-color: white; height: 580px; padding: 30px;">
				<div class="form-group" id="divViewTop" >
					<div class="divViewC" style="width: 10%">글 번호</div>
					<div class="divViewC" style="width: 40%">제목</div>
					<div class="divViewC" style="width: 15%">작성자</div>
					<div class="divViewC" style="width: 15%">등록일</div>
					<div class="divViewC" style="width: 10%">조회수</div>
					<div class="divViewC" style="width: 10%">추천수</div>
				</div>
			<hr>
			
				<div class="form-group" id="divViewTop" >
					<div class="divViewC" style="width: 10%">${map['FB_NO'] }</div>
					<div class="divViewC" style="width: 40%">${map['FB_TITLE'] }</div>
					<div class="divViewC" style="width: 15%">${map['MEM_NAME'] }</div>
					<fmt:formatDate value="${map['FB_REGDATE'] }" pattern="yyyy-MM-dd" var="regdate"/>
					<div class="divViewC" style="width: 15%">${regdate }</div>
					<div class="divViewC" style="width: 10%">${map['FB_VIEW'] }</div>
					<div class="divViewC" style="width: 10%">${map['FB_RECM'] }</div>
				</div>
				<hr>
				<div style="min-height: 400px; ">
					<div class="form-group" id="contentDiv" style="  padding: 20px;">
					<p class="content">${map['FB_CONTENT'] }</p>
						
					</div>
				</div>
				<div class="form-group">
				<a href="<c:url value='/board/freeBoardWrite.do' />">글쓰기</a>  |  
				<a href="<c:url value='/board/freeBoardList.do' />">목록</a>  |  
				<c:if test="${map['MEM_NO'] eq sessionScope.memberVO.memNo }">
					<a href="<c:url value="/board/freeBoardUpdate.do?fbNo=${map['FB_NO'] }" />">수정</a>	  |  			
					<a href="<c:url value="/board/freeBoardDelete.do?fbNo=${map['FB_NO'] }" />" onclick="return delchk();">삭제</a>
				
				</c:if>
				<c:if test="${! map['MEM_NO'] eq sessionScope.memberVO.memNo }">
					<a href="#">추천</a>	  
				
				</c:if>
				
				</div>
			
			
			</div>
			
		</div>

	</div>

	<c:import url="../../index/footer.jsp" /> 

</body>
</html>