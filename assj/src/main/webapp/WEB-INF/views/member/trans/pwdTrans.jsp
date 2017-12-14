<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#reset').click(function(){
			$('[type=password]').val("");
		});
	});
</script>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	.container{
		width:800px;	
	}
	fieldset{
		width:620px;
		margin:0 auto;	
		padding:20px;
		text-align:center;
	}
	span{
		color:#ff4800;
	}
	.table{
		margin:0 auto;
	}
	#bottomDiv{
		width:620px;
		padding:20px;
		margin:0 auto;
	}
	#btnDiv .btn{
		width:160px;
	}	
	h1{
		font-weight:bold;
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
			<h1>비밀번호 변경</h1>
			<br>
			<hr>
			<fieldset>
				개인정보 보호를 위해 <b>6개월마다 주기적으로 비밀번호를 변경</b>해 사용하는 것이 안전합니다.<br>
				<span>※ 여러 사이트에 동일한 비밀번호를 사용하면 도용되기 쉬우므로 비밀번호를 주기적으로<br> 변경해 주는 것이 안전합니다.</span>
				<br><br><br>
				<table class="table table-bordered">
					<tr>
						<td>현재 비밀번호</td>
						<td><input type="password" class="form-control"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" class="form-control"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" class="form-control"></td>
					</tr>			
				</table>
				<br><br>
				<div id="btnDiv">
			   		<button id="ok" type="button" class="btn btn-primary btn-lg">확인</button>
					<button id="reset" type="button" class="btn btn-default btn-lg">다시입력</button>
			   	</div>
			   	<br><br><br>
			   	<hr>

			</fieldset>
			<div id="bottomDiv">
			   	&nbsp;<span class="glyphicon glyphicon-ok">&nbsp;</span>비밀번호 이렇게 작성하세요.<br><br>
				- 아이디와 동일한 비밀번호는 사용할 수 없습니다.<br>
				- 비밀번호 변경 시 현재 사용중인 비밀번호를 재사용하실 수 없으며<br>
				  &nbsp;&nbsp;다른 비밀번호로 변경하셔야 합니다.<br>
			    - 최대 영문 20자까지 비밀번호로 설정할 수 있습니다.	
		    </div>	
		</div>
	</body>
</html>