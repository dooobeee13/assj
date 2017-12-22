<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>스크랩</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="../../js/bootstrap.min.js"></script>
	<link href="../../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<script type="text/javascript">

</script>
<style type="text/css">
	#scrap fieldset{
		/* width:660px;
 		margin:0 auto; */
		padding:20px;
		background-color:#dde6f7;
	}
	#scrap {
   		/* width:720px;*/
   		padding:40px; 
   		margin:0 auto;	
   		background-color:#ffff;
   	}
	#scrap h1{
		font-weight:bold;
	}
	#scrap .well{
		background-color:#e8eaf9;
	}
	#scrap table{
		text-align:center;
	}
	#scrap th{
		background-color:#D7D7D7;
		text-align:center;
	}
	#scrap #rtMenu{
		float:right;
	}
	
		 /* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 660px;
  } 

   .sidebar-nav {
   /*  width: 250px;
    margin: 0;
    padding: 0; */
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 0.8em;
    line-height: 2.2em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #7a6666;
  }
  
  .sidebar-nav li a:hover {
    color: #cccc;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
  } 
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
	<body>
	<c:import url="../../index/top.jsp" />
 	
		<div class="container">
		
		<div class="row">
		<!-- 사이드바 -->
		<div id="page-wrapper" class="col-md-3">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h1>My Page</h1></li>
				<hr>
				<li><h5><b>이력서 관리</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>이력서 등록</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>이력서 현황</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>자소서 관리</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>맞춤채용 정보</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>맞춤채용 설정</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>나의 맞춤채용 정보</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>스크랩한 공고</b></h5></li>
				<li><a href="<c:url value='/member/menu/scrap.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>스크랩 공고</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>관심기업정보</a></li>
			</ul>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>개인정보 관리</b></h5></li>
				<li><a href="<c:if test="${!empty sessionScope.memberVO}"><c:url value='/member/edit/psMemEdit.do'/></c:if><c:if test="${!empty sessionScope.cmMemberVO.cmId}"><c:url value='/member/edit/cmMemEdit.do'/></c:if>"><span class="glyphicon glyphicon-chevron-right"></span>개인정보 수정</a></li>
				<li><a href="<c:url value='/member/trans/pwdTrans.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>비밀번호 변경</a></li>
			</ul>
		</div>
	</div>
		<!-- /사이드바 -->
		
		<!-- 본문 -->
   			<div class="col-md-9">
			 <div id="scrap">
			<fieldset>
				<h1>&nbsp;스크랩한 공고</h1>
				<br><br>
				<p>ㆍ 사람인에서 스크랩한 채용공고를 모두 확인할 수 있습니다.<br>
				ㆍ 기업이 공고를 삭제한 경우, 스크랩한 채용공고 페이지에서도 삭제됩니다.</p>
				<br>
				<div class="well well-lg">
					<select>
						<option>회사명</option>
						<option>제목</option>
					</select>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" size="72">
					<button type="button" class="btn btn-primary btn-sm">검색</button>
				</div>
				<br><br>
				<p>
				전체 X 건 | <a href=""><span class="glyphicon glyphicon-remove"></span>선택삭제</a> 
				<span id="rtMenu"><a href="">스크랩일순<span class="glyphicon glyphicon-chevron-up"></span></a> | <a href="">마감일순</a> 
				<select>
					<option>전체</option>
					<option>진행중</option>
					<option>마감</option>
				</select>
				</span></p>
				<table class="table table hover">
					<tr>
						<th><input type="checkbox" id="PsCheckbox5" value="option1"></th>
						<th>스크랩일</th>
						<th>회사명</th>
						<th>제목</th>
						<th>마감일</th>
						<th>지원방법</th>
					</tr>
					<tr>
						<td><input type="checkbox" id="PsCheckbox5" value="option1"></td>
						<td>2017.12.25</td>
						<td>삼성</td>
						<td>사원모집</td>
						<td>2018.01.20</td>
						<td>이메일</td>
					</tr>
					<tr>
						<td><input type="checkbox" id="PsCheckbox5" value="option1"></td>
						<td>2017.12.25</td>
						<td>삼성</td>
						<td>사원모집</td>
						<td>2018.01.20</td>
						<td>이메일</td>
					</tr>
					<tr>
						<td><input type="checkbox" id="PsCheckbox5" value="option1"></td>
						<td>2017.12.25</td>
						<td>삼성</td>
						<td>사원모집</td>
						<td>2018.01.20</td>
						<td>이메일</td>
					</tr>
					<tr>
						<td><input type="checkbox" id="PsCheckbox5" value="option1"></td>
						<td>2017.12.25</td>
						<td>삼성</td>
						<td>사원모집</td>
						<td>2018.01.20</td>
						<td>이메일</td>
					</tr>
				</table>
			</fieldset>
			</div>
			</div>
		</div>
		</div>
		<c:import url="../../index/footer.jsp" />
	</body>
</html>