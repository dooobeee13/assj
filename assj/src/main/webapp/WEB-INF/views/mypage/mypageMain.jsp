<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 메인</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
</head>
<body>

<c:import url="../index/top.jsp" />


 <div class="container">
	
      <div class="row">
<c:import url="mypageSide.jsp"></c:import>
      
        <div class="col-lg-6 col-md-6">
         	이력서 갯수
        </div>
        
        <div class="col-lg-6 col-md-6">
           입사지원 횟수
        </div>
        
        <div class="col-lg-6 col-md-6">
          스크랩
        </div>
        
      </div>
 </div>
 <c:import url="../index/footer.jsp" />
</body>
</html>