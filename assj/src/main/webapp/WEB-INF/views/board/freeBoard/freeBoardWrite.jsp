<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/ckeditor/ckeditor.js' />"></script>
<script type="text/javascript">

</script>
</head>
<body>

<c:import url="../../index/top.jsp" /> 





<div class="container">
   
   <div class="row">
   
<c:import url="../boardSide.jsp"></c:import>

			<div class="col-lg-9 col-md-9">

				<form name="frmWrite" method="post"
					action="<c:url value='/board/freeBoardWrite.do'/>"
					enctype="multipart/form-data">
					<fieldset>
						<legend>글쓰기</legend>
						<div class="firstDiv">
							<label for="title">제목</label> <input type="text" id="title"
								name="title" />
						</div>
						
						<div>
							<label for="content">내용</label>
							<textarea id="content" name="content" rows="12" cols="40"></textarea>
							 
							<script type="text/JavaScript">


								window.onload = function() {

									CKEDITOR.replace(

									'content'

									, {
										skin : 'office2003',
										enterMode : '2',
										shiftEnterMode : '3',
										width : '90%',
										height : '200px'
									});

								};
							</script>
						</div>
						
						
						<div>
							<label for="upfile">첨부파일</label> <input type="file" id="upfile"
								name="upfile" />
						</div>
						<div class="center">
							<input type="submit" value="등록" /> <input type="Button"
								value="글목록"
								onclick="location.href='<c:url value="/board/freeBoardList.do"/>'" />
						</div>
					</fieldset>
				</form>

			</div>
		</div>  	
 
 
</div>
<div class="divBtn">
    <a href="<c:url value='/board/freeBoardWrite.do'/>">글쓰기</a>
</div>

	<c:import url="../../index/footer.jsp" /> 

</body>
</html>