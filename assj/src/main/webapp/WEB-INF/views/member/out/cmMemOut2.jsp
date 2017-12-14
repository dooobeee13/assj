<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>기업회원 탈퇴2</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
     </script>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	h1{
		font-weight:bold;
	}
	fieldset{
		width:800px;
		margin:0 auto;
	}
	.well{
		background-color:#f6f9ff;
		padding:30px;
	}
	#wellSm{
		margin:0 auto;
		width:500px;
	}
	label{
		width:120px;
	}
	span{
		color:#ff4800;
	}
	#btnDiv{
		text-align:center;
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
		<div class="container">
		<fieldset>
			<h1>기업회원 탈퇴</h1>
			<br>
			<hr>
			<br>
				<div class="well well-lg">
					회원님께서는 <b>모든 회원 혜택을 포기하고 탈퇴하기</b>를 선택하였습니다.<br>
					본인확인을 위해 비밀번호를 다시 한번 입력해주시기 바랍니다.<br>
					<span>※ 타인에게 노출되지 않도록 주의해 주세요.</span><br>
					<hr>
					<br>
					<b>&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>&nbsp;비밀번호 재확인</b><br><br>
					<div class="well well-sm" id="wellSm">
						<form role="form" class="form-inline">
							<div class="form-group">
								<label for="name">이름</label> 
								조경민(wickedckm)
							</div><br>			
							<hr>	
							<div class="form-group">
								<label for="pwd">비밀번호</label> 
								<input type="password" class="form-control">
							</div><br>				
							<hr>	
						</form>
						<div id="btnDiv">
								<button type="button" class="btn btn-primary">회원확인</button>
						</div>
					</div>
				</div>
		</fieldset>
		</div>
	</body>
</html>