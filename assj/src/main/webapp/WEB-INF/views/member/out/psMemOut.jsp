<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>개인회원 탈퇴</title>
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
	fieldset{
		width:800px;
		margin:0 auto;
	}
	#btnDiv{
		text-align:center;
	}
	#btnDiv .btn{
		width:160px;
	}	
	span{
		color:#ff4800;
	}
	.gr{
		color:green;
	}
	.well{
		background-color:#f6f9ff;
		padding:30px;
	}
	table{
		border-collapse: collapse;
	}
	
	h1{
		font-weight:bold;
	}
	.titleTD{
		width:245px;
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
				<h1>개인회원 탈퇴</h1>
				<br>
				<hr>
				<br>
				<div class="well well-lg">
					<h2>서비스 이용에 불편한 점이 있으신가요?</h2>
					<b><span class="glyphicon glyphicon-phone-alt"> </span>&nbsp;고객센터로 문의주시면 최선을 다해 도와드리겠습니다.</b><br><br><br>
					<div id="btnDiv">
						<button type="button" class="btn btn-primary btn-sm">고객센터 문의 바로가기</button>
						<button type="button" class="btn btn-primary btn-sm">1:1 상담문의 바로가기</button>
					</div>
				</div>
				<br><br>
				<div class="well well-lg">
					<h3>지금 사람인 회원을 탈퇴하시면,</h3>
					<br><br>
					<P><span class="gr">* 정성껏 작성한 이력서가 모두 삭제됩니다.</span><br>
					  &nbsp;&nbsp;혹시 지원회사별로 작성한 이력서가 여러 개 있진 않으신가요? 탈퇴를 하시면 모든 이력서가 삭제 처리됩니다.<br>
					  &nbsp;&nbsp;삭제된 이력서는 복구가 불가능합니다. 입사지원을 하시려면 이력서를 또!! 작성하셔야 하는 번거로움이 있습니다.</P>
					<P><span class="gr">* ‘입사지원통계’ 를 보실 수 없게 되어, 실시간 입사지원 현황 확인이 불가능해집니다.</span><br>
					  &nbsp;&nbsp;실시간 입사지원 현황을 속 시원히 보여주어 많은 구직자들이 애용하는 ‘입사지원통계’ 서비스는<br>
					  &nbsp;&nbsp;사람인 회원에게만 제공됩니다.<br>
					  &nbsp;&nbsp;입사지원 현황.. 실시간으로 확인 안해도 괜찮으시겠어요??<br></P>
					<P><span class="gr">* ‘댓글통’에서 회원님이 궁금하신 채용관련 질문을 하실 수 없게 됩니다.</span><br>
					  &nbsp;&nbsp;인사담당자와 구직자의 소통 공간으로 자리매김하고 있는 ‘댓글통’ 서비스는 회원에게만<br>
					  &nbsp;&nbsp;댓글 작성을 허가하고 있습니다.<br>
					  &nbsp;&nbsp;탈퇴를 하시면, 질문을 할 수 없을 뿐만 아니라 이제껏 쌓아온 등급과 비밀댓글, 공지 등 특별 댓글 작성 권한이<br>
					  &nbsp;&nbsp;모두 사라집니다.</P>
				</div>
				<br><br>
				<table class="table table-bordered">
					<tr><th colspan='3'><h4>&nbsp;&nbsp;<b>탈퇴이외에 이런 방법을 추천해드립니다.</b></h4></th></tr>
					<tr>
					 	<td class="titleTD">너무 많이 오는 채용소식 메일<br><span><b>→ 맞춤 채용소식메일 서비스 해제</b></span></td>
					 	<td>메일이 너무 많이 와서 불편하신가요?<br>
							맞춤 채용소식 메일링 서비스를 해제하시면, 이로 인한 불편을<br>
							감소시킬 수 있습니다.</td>
					 	<td><button type="button" class="btn btn-primary">메일 수신설정<br>바로가기</button></td>
					</tr>
					<tr>
						<td class="titleTD">스팸처럼 느껴지는 공지/이벤트 메일<br><span><b>→ 수신거부</b></span></td>
						<td>사람인의 이벤트, 교육정보 등의 메일이 스팸메일로<br>느껴지시나요?<br>그렇다면, ‘공지/이벤트’ 메일을 ‘수신안함’으로 변경해주세요.</td>
						<td><button type="button" class="btn btn-primary">메일 수신설정<br>바로가기</button></td>
					</tr>
					<tr>
						<td class="titleTD">이력서 유출 불안감 <br><span><b>→ 인재정보 등록설정 변경하기</b></span></td>
						<td>내 이력서를 누가 볼까 불안하신가요?<br>
							이력서를 인재정보 미등록으로 설정하시면, 회원님을 제외한<br>
							그 누구도 이력서를 볼 수 없어 안심하셔도 좋습니다.</td>
						<td><button type="button" class="btn btn-primary">이력서 변경&nbsp;&nbsp;&nbsp;<br>바로가기</button></td>
					</tr>
					<tr>
						<td class="titleTD">개인정보 때문에 사이트마다<br>탈퇴 감행 중 <br><span><b>→ 비밀번호 변경</b></span></td>
						<td>내 개인정보가 노출될까봐 불안하신가요?<br>
							비밀번호를 정기적으로 바꾸시면 개인정보 유출을<br> 막을 수있습니다.</td>
						<td><button type="button" class="btn btn-primary">비밀번호 변경<br>바로가기</button></td>
					</tr>					
				</table><br><br>
				<div id="btnDiv">
					<button type="button" class="btn btn-primary btn-lg">탈퇴하기</button>
					<button type="button" class="btn btn-default btn-lg">취소</button>
				</div>
				<br><br><br><br>
			</fieldset>
		</div>
	</body>
</html>