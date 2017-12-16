<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>취업준비</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
</script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<script type="text/javascript">
</script>
<style type="text/css">
	.container{
		margin:0 auto;	
	}
	#psService{
		background-color:#ffff;
	}
	#psService img{
		width:100%;
	}
	#psService table{
		width:100%;
	}
	#psService #picDiv{
		text-align:center;
	}
	#psService #picDiv img{
		width:25%;	
	}
	fieldset{
		width:1200px;
		height:600px;
		margin:0 auto;	
		background-color:#ffff;
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
			<fieldset>
				<div id="psService">
				<img src="<c:url value='/images/취업 성공 가이드.png'/>" alt="취업성공가이드">
					<br><br><br>
					<div id="picDiv">
						<a href="<c:url value='/member/menu/psService2.do'/>"><img src="<c:url value='/images/취업준비.png'/>" alt="취업준비"></a>
								   <img src="<c:url value='/images/공백.png'/>" alt="공백">
						<a href="<c:url value='/member/menu/psService3.do'/>"><img src="<c:url value='/images/이직준비.png'/>" alt="이직준비"></a>
					</div>
				</div>
			</fieldset>
		</div>
	<c:import url="../../index/footer.jsp" />
	</body>
</html>