<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>이직준비</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(window).load(function(){
			$('fieldset').hide();
			$('#step1').show();
			$('ul li:eq(0)').attr("class","active");
		}); 

		$('ul li').click(function(){
			$('ul li').attr("class","");
			$(this).attr( "class","active");
			var id=$(this).text();
		
			$('fieldset').hide();
			$('#id').show();
		});
		

		$('ul li:eq(0)').click(function(){
			$('fieldset').hide();
			$('#step1').show();
		});
		$('ul li:eq(1)').click(function(){
			$('fieldset').hide();
			$('#step2').show();
		});
		$('ul li:eq(2)').click(function(){
			$('fieldset').hide();
			$('#step3').show();
		});
		$('ul li:eq(3)').click(function(){
			$('fieldset').hide();
			$('#step4').show();
		});
		$('ul li:eq(4)').click(function(){
			$('fieldset').hide();
			$('#step5').show();
		});
		$('ul li:eq(5)').click(function(){
			$('fieldset').hide();
			$('#step6').show();
		});
		
	});
	
</script>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	.container{
		margin:0 auto;
	}
	img{
		width:100%;
	}
	fieldset {
		width:800px;
		margin:0 auto;
		text-align:center;
		background-color:#f9f9f9;
	}
	.btnImg{
		width:240px;
	}
	.diagram{
		width:500px;
	}
	#imgSol{
		width:120px;
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
				<img src="../images/취업 성공 가이드.png" alt="취업성공가이드">
				<ul class="nav nav-tabs nav-justified">
					<li><a href="#">step1<br>회원가입&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li><a href="#">step2<br>이력서 관리&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li><a href="#">step3<br>채용공고&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li><a href="#">step4<br>입사지원&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li><a href="#">step5<br>입사지원 관리&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li><a href="#">step6<br>입사성공!</a></li>
				</ul>
			<fieldset id="step1">
				<h4>아직 알쓰신JOB 회원이 아니신가요?<br> 
				쉽고 간편하게 회원가입 해보세요.</h4>
				<br><br>
				<h1>01무료 회원가입</h1><br>
				<h4>알쓰신JOB 회원가입은 무료입니다.<br>
				가입과 동시에 회원서비스를 이용할 수 있어요.</h4>
				<b>회원가입 절차</b><br><br>
				<img src="../images/diagram_guide.png" alt="가이드" class="diagram"><br><br><br>
				<a href=""><img src="../images/회원가입 버튼.png" alt="회원가입 버튼" class="btnImg"></a>
				<br><br><br>
				<hr>
				<br><br>
				<h1>02소셜 계정으로 간편한 가입</h1><br>
				<h4>네이버,페이스북,카카오,구글 아이디로<br>
					간편하게 가입하세요!</h4><br>
				<img src="../images/diagram_guide2.png" alt="가이드"  class="diagram"><br><br><br><br>
				<a href=""><img src="../images/회원가입 버튼.png" alt="회원가입 버튼" class="btnImg"><br><br></a>
				<br>
				<hr>
			</fieldset>
			<fieldset id="step2">
				<h4>취업 준비의 시작!<br> 
				이력서, 자소서를 작성해보세요.</h4>
				<br><br>
				<h1>01기본 이력서등록</h1><br>
				<h4>기본 이력서 등록하고 <br>
				다양한 서비스를 만나보세요.</h4>
				<br>
				<img src="../images/이력서등록.png" alt="이력서등록" class="diagram"><br><br><br>
				<a href=""><img src="../images/이력서등록버튼.png" alt="이력서등록버튼" class="btnImg"></a>
				<br><br><br>
				<hr>
				<br><br>
				<h1>02인재정보 등록</h1><br>
				<h4>인사담당자의 러브콜을 받으시려면,<br>
					이력서를 인재정보에 등록하세요.</h4><br>
				<img src="../images/인재정보등록.png" alt="인재정보등록"  class="diagram"><br><br><br><br>
				<a href=""><img src="../images/인재정보등록버튼.png" alt="인재정보등록버튼" class="btnImg"><br><br></a>
				<br>
				<hr>	
			</fieldset>
			<fieldset id="step3">
				<h4>신입을 위한 <br> 
				공채의 모든 것!</h4>
				<br><br>
				<h1>01공채의 명가</h1><br>
				<h4>혹시 경력 공채를 준비하나요? <br>
				공채의 명가에서 경력 공채속보를 확인하세요.</h4>
				<br>
				<img src="../images/공채의명가2.png" alt="공채의명가2" id="imgSol"><br><br><br>
				<a href=""><img src="../images/공채의명가버튼.png" alt="공채의명가버튼" class="btnImg"></a>
				<br><br><br>
				<hr>
				<br><br>
				<h1>02채용정보 상세검색</h1><br>
				<h4>업·직종, 지역, 경력, 학력 등 <br>
					조건에 맞는 채용정보를 검색하세요.</h4><br>
				<img src="../images/채용정보.png" alt="채용정보"  class="diagram"><br><br><br><br>
				<a href=""><img src="../images/채용정보버튼.png" alt="채용정보버튼" class="btnImg"><br><br></a>
				<br>
				<hr>
				<br><br>
				<h1>03맞춤채용 정보</h1><br>
				<h4>원하시는 조건을 입력하면<br>
					선택한 조건에 맞는 공고만 보여드려요.</h4><br>
				<img src="../images/맞춤채용정보.png" alt="맞춤채용정보"  class="diagram"><br><br><br><br>
				<a href=""><img src="../images/맞춤채용정보버튼.png" alt="맞춤채용정보버튼" class="btnImg"><br><br></a>
				<br>
				<hr>		
			</fieldset>
			<fieldset id="step4">
				<h4>PC, 모바일 어디서나! <br> 
				쉽고 빠른 입사지원</h4>
				<br><br>
				<h1>01빠른 입사지원</h1><br>
				<h4>PC, 모바일 어디서나<br>
				쉽고 간편한 즉시지원을 이용해보세요!</h4>
				<br>
				<img src="../images/입사지원.png" alt="입사지원" id="imgSol"><br><br><br>
				<br><br><br>
				<hr>
			</fieldset>
			<fieldset id="step5">
				<h4>MY Page에서 <br> 
				취업준비 상황을 한눈에 볼 수 있어요.</h4>
				<br><br>
				<h1>01입사지원 현황</h1><br>
				<h4>최근 지원한 기업들을 <br>
				입사지원 현황에서 관리해보세요.</h4>
				<br>
				<img src="../images/입사지원관리.png" alt="입사지원관리" class="diagram"><br><br><br>
				<a href=""><img src="../images/입사지원관리버튼.png" alt="입사지원관리버튼" class="btnImg"></a>
				<br><br><br>
				<hr>
			</fieldset>
			<fieldset id="step6">
				<h4>구직자 여러분의 <br> 
				이직 성공을 응원합니다.</h4>
				<br><br>
				<h1>01이직 성공</h1><br>
				<h4>사람인에 입사지원을 통하여<br>
				이직 성공에 도전해보세요.</h4>
				<br>
				<img src="../images/이직성공.png" alt="이직성공" id="imgSol"><br><br><br>
				<a href=""><img src="../images/입사성공버튼.png" alt="입사성공버튼" class="btnImg"></a>
				<br><br><br>
				<hr>
			</fieldset>
		</div>
	</body>
</html>