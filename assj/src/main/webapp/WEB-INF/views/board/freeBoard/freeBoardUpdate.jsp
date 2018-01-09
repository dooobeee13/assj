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
<script type="text/javascript" src="<c:url value='/ck/ckeditor/ckeditor.js' />"></script>
<script type="text/javascript">
	$(function(){
		$('#frmWrite').submit(function(){
			var contents = CKEDITOR.instances.fbContent.getData();
			if($('#fbTitle').val()==""){
				alert('제목을 입력하세요');
				$('#fbTitle').focus();
				return false;
			}else if(contents==""){
				alert('내용을 입력하세요');
				$('#fbContent').focus();
				return false;
			}
			
		});
	});
</script>
</head>
<body>

<c:import url="../../index/top.jsp" /> 





<div class="container">
   
   <div class="row">
   
<c:import url="../boardSide.jsp"></c:import>

			<div class="col-lg-9 col-md-9">

				<form name="frmWrite" id="frmWrite" method="post" action="<c:url value='/board/freeBoardUpdate.do'/>"
					enctype="multipart/form-data">
					<input type="hidden" name="fbNo" id="fbNo" value="${fbVO.fbNo }">
					<input type="hidden" name="memNo" id="memNo" value="${fbVO.memNo }">
					<fieldset>
						<legend>글수정</legend>
						<div class="firstDiv">
							<label for="title">제목</label> 
							<input type="text" id="fbTitle" name="fbTitle" class="form-control" value="${fbVO.fbTitle}" />
						</div>
						<br>
						<div>
							<label for="content">내용</label>
							<textarea id="fbContent" name="fbContent">${fbVO.fbContent}</textarea>
							 
							<script type="text/JavaScript">


								window.onload = function() {

									CKEDITOR.replace('fbContent');

								};
							</script>
						</div>
						
						
						
						<div class="center">
							<input type="submit" value="수정" />
							 <input type="Button" value="글목록"
								onclick="location.href='<c:url value="/board/freeBoardList.do"/>'" />
						</div>
					</fieldset>
				</form>

			</div>
		</div>  	
 
 
</div>

	<c:import url="../../index/footer.jsp" /> 

</body>
</html>