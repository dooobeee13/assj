<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>    
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>개인회원 수정</title> 
    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	h1{
    		font-weight:bold;
    	}
    	span{
     		color:red;
     	}
     	.container{
     		width:800px;
     	}
     	fieldset{
 			width:600px;
 			margin:0 auto;	
 			padding:20px;
 			text-align:center;
 		}
 		table{
 			margin:0 auto;	
 			width:300px;
 			text-align:left;
 		}
 		td{
 			padding:8px;
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
    	<h1>개인정보 수정</h1>
    	<br>
    	<hr>
    	<br><br><br>
    	<fieldset>
    		<p>회원님의 정보를 안전하게 보호하기 위해 <b>비밀번호를 다시 한번 입력</b>해 주시기 바랍니다.</p>
    		<span>※ 타인에게 노출되지 않도록 주의해 주세요.</span>
    		<br><br><br>
    		<h1>비밀번호 재확인</h1>
    		<br><br>
    		<form>
    			<table>
    				<tr>
	    				<td><label for="Name">이름</label></td> 
						<td><h4><b>홍길동(hong123)</b></h4></td>
					</tr>
    				<tr>
    					<td><label for="pwd">비밀번호</label></td> 
						<td><input type="password" class="form-control"></td>
    				</tr>
    				<tr>
    					<td colspan="2"><button type="button" class="btn btn-primary btn-lg btn-block">회원확인</button></td>
    				</tr>
    			</table>
    		</form>
    	</fieldset>
    </div>    
</body>
</html>
    