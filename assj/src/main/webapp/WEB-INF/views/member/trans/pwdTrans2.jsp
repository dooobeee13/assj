<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>비밀번호 변경</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
 <!-- Bootstrap -->
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />

<script type="text/javascript">
	$(document).ready(function(){
		$('#ok').click(function(){
			if($('#OriginPwd').val()!=$('#pwd').val()){
				alert('현재 비밀번호가 틀립니다');
				$('#OriginPwd').focus;
				return false;
			}else if($('#cmPwd').val()==""){
				alert('비밀번호를 입력해주세요');
				$('#cmPwd').focus;
				return false;
			}else if($('#cmPwd').val()==$('#pwd').val()){
				alert('기존 비밀번호와 다르게 입력해주세요');
				$('#newPwd').focus;
				return false;
			}else if($('#cmPwd').val()==$('#cmId').val()){
				alert('아이디와 비밀번호를 다르게 입력해주세요');
				$('#newPwd').focus;
				return false;
			}else if($('#cmPwd').val()!=$('#cmPwd2').val()){
				alert('비밀번호가 일치하지 않습니다');
				$('#cmPwd2').focus;
				return false;
			}
		});
		
		$('#reset').click(function(){
			$('[type=password]').val("");
		});	
		
	});
</script>
<style type="text/css">
	#pwdTrans .container{
		width:800px;	
	}
	#pwdTrans {
   		/* width:720px;*/
   		margin:0 auto;	
   		padding:40px; 
   		background-color:#ffff;
     }
	#pwdTrans fieldset{
		width:600px;
 		margin:0 auto;
		padding:20px;
		background-color:#dde6f7;
	}
	#pwdTrans #btnDiv{
		text-align:center;
	}
	#pwdTrans span{
		color:#ff4800;
	}
	#pwdTrans .table{
		margin:0 auto;
	}
	#pwdTrans #bottomDiv{
		width:620px;
		padding:20px;
		margin:0 auto;
	}
	#pwdTrans #btnDiv .btn{
		width:160px;
	}	
	#pwdTrans h1{
		font-weight:bold;
	}

 /* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 870px;
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
	 	
			<!-- 본문 -->
		<div class="container">
		<div class="row">
		 <!-- 사이드바 -->
		<div id="page-wrapper" class="col-md-3">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h1>My Page</h1></li>
				<hr>
				<li><a href="<c:url value='/member/edit/cmMemEdit.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>기업정보 수정</a></li>
				<li><a href="<c:url value='/member/trans/pwdTrans2.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>비밀번호 변경</a></li>
			</ul>
		</div>
	</div>
		<!-- /사이드바 -->
			
			<div class="col-md-9">
			<form name="frm" method="post" action="<c:url value='/member/trans/pwdTrans2.do'/>">
			<div id="pwdTrans">
			<h1>비밀번호 변경</h1>
			<br>
			<hr>
			<input type="text" id="cmId" name="cmId" value="${vo.cmId}">
			<input type="text" id="pwd" name="pwd" value="${vo.cmPwd}">
			<fieldset>
				개인정보 보호를 위해 <b>6개월마다 주기적으로 비밀번호를 변경</b>해 사용하는 것이 안전합니다.<br>
				<span>※ 여러 사이트에 동일한 비밀번호를 사용하면 도용되기 쉬우므로 비밀번호를 주기적으로<br> 변경해 주는 것이 안전합니다.</span>
				<br><br><br>
				<table class="table table-bordered">
					<tr>
						<td>현재 비밀번호</td>
						<td><input type="password" class="form-control" name="OriginPwd" id="OriginPwd"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" class="form-control" name="cmPwd" id="cmPwd"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" class="form-control" name="cmPwd2" id="cmPwd2"></td>
					</tr>			
				</table>
				<br><br>
			   	<br><br><br>
			   	<hr>
			</fieldset>
			<div id="bottomDiv">
				<div id="btnDiv">
			   		<button id="ok" type="submit" class="btn btn-primary btn-lg">확인</button>
					<button id="reset" type="button" class="btn btn-default btn-lg">다시입력</button>
			   	</div>
			   	<br>
			   	&nbsp;<span class="glyphicon glyphicon-ok">&nbsp;</span>비밀번호 이렇게 작성하세요.<br><br>
				- 아이디와 동일한 비밀번호는 사용할 수 없습니다.<br>
				- 비밀번호 변경 시 현재 사용중인 비밀번호를 재사용하실 수 없으며<br>
				  &nbsp;&nbsp;다른 비밀번호로 변경하셔야 합니다.<br>
			    - 최대 20자까지 비밀번호로 설정할 수 있습니다.	
		    </div>	
			</div>
		</form>
		</div>
		</div>
		</div>
		 <c:import url="../../index/footer.jsp" />
	</body>
</html>