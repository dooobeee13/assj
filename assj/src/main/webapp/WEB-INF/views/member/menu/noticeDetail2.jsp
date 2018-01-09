<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>" ></script>
<script type="text/javascript">
</script>
<style type="text/css">
	.container fieldset {
		width:70%;
		padding:80px;
		background-color:#ffff;
	}
	.container #searchTable{
		float:right;
	}
	.container table th,table{
		text-align:center;
	}
	.container #title{
		font-size:0.6em;
	}
	.container #date{
		text-align: right;
	}
	.container .well{
		background: #e3e8ef;
	}
	.container #list{
		background-color:#ebecee;
	}
	.container #ListDiv{
		text-align: right;
	}
	.container #contentsDiv{
		height:280px;
	}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
		<c:import url="../../administrator/inc/adminTop.jsp"/>
		<!-- 섹션 부분 -->
	 	<div class="col-div-80-100" style="margin-left:1em; width:83%; font-size:0.7em;"> 
			<div class="col-div-80-20 "> 	
				<div class="container">
					<fieldset>
				<h4>공지사항</h4>
				<hr>
				<div>	
					<div class="well well-lg">
						<h4>
						<c:if test="${map.NOTITITLE=='공지'}">
							<span style="color:red">[<b>${map.NOTITITLE}</b>]</span>			
						</c:if>
						<c:if test="${map.NOTITITLE=='이벤트'}">
							<span style="color:blue">[<b>${map.NOTITITLE}</b>]</span>			
						</c:if>
						<c:if test="${map.NOTITITLE=='오픈'}">
							<span style="color:orange">[<b>${map.NOTITITLE}</b>]</span>			
						</c:if>
						<c:if test="${map.NOTITITLE=='뉴스'}">
							<span style="color:green">[<b>${map.NOTITITLE}</b>]</span>			
						</c:if>			
						<span id="title">${map.TITLE }</span>
						</h4>
						
						<p id="date">등록일:<fmt:formatDate value="${map.REGDATE}" pattern="yyyy-mm-dd hh-mm-ss"/>&nbsp;&nbsp; 조회수:${map.READCOUNT}</p>
					</div>
					<div id="contentsDiv">
						${map.CONTENTS}
					</div>
					<hr>
					<c:if test="${!empty nexPre.NEXT_TITLE}">
						다음글 <span class="glyphicon glyphicon-triangle-top"></span>&nbsp;&nbsp;&nbsp;<a href="<c:url value='/member/menu/AdminCountUpdate.do?no=${nexPre.NEXT_NO}'/>">${nexPre.NEXT_TITLE}</a>
					</c:if>
					<br>
					<c:if test="${!empty nexPre.PRE_TITLE}">
						이전글 <span class="glyphicon glyphicon-triangle-bottom"></span>&nbsp;&nbsp;&nbsp;<a href="<c:url value='/member/menu/AdminCountUpdate.do?no=${nexPre.PRE_NO}'/>">${nexPre.PRE_TITLE}</a><br>
					</c:if>
					<hr>
					<div id="ListDiv">
					<a href="<c:url value='/member/menu/noticeEditOut.do'/>"><button type="button" class="btn btn-default btn-sm" id="list" style="background-color:#607D8B;color:#ffff" >목록으로</button></a>
					</div>
				</div>
			</fieldset>
					
				</div>
			</div>
			  </div>
	  	</div>
</body>
</html>
				
				
				
				