<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
     </script>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	fieldset{
		width:800px;
		margin:0 auto;	
		padding:20px;
	}
	h1{
		font-weight:bold;
	}
	.well{
		background-color:#e8eaf9;
	}
	table{
		text-align:center;
	}
	th{
		background-color:#D7D7D7;
		text-align:center;
	}
	#rtMenu{
		float:right;
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
	</body>
</html>