<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
.sCategory {
	padding-left: 0;
	padding-right: 0;
	border: 1px solid #e0e2e6
}

.sCategory .sCateTitle {
	line-height: 40px;
	height: 42px;
	background-color: #f9fafc;
	color: #333;
	font-weight: bold;
	cursor: pointer;
	padding-left: 17px;
}

.sCategory .sCateTitle span {
	float: right;
	top: 15px;
	padding-right: 10px;
}

.sCategory .sCateTitle span.up {
	text-indent: -9999px;
    display: inline-block;
    vertical-align: middle;
    position: relative;
    top: 17px;
    width: 18px;
    height: 10px;
    right: 10px;
    background: url(/assj/images/spr.png) no-repeat;
}

.sCategory .sCateTitle span.down {
	text-indent: -9999px;
    display: inline-block;
    vertical-align: middle;
    position: relative;
    top: 17px;
    width: 18px;
    height: 10px;
    right: 10px;
    background: url(/assj/images/spr.png) no-repeat -35px 0px;
}

.sCategory .sCateName {
	height: 210px;
	overflow-y: scroll;
	background: #fff;
	padding-top: 15px;
}

.sCategory .thinScroll::-webkit-scrollbar-track
{
	background-color: #fff;
}

.sCategory .thinScroll::-webkit-scrollbar {
	width: 5px;
	background-color: #F5F5F5;
}

.sCategory .thinScroll::-webkit-scrollbar-thumb {
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
	background-color: rgba(0,0,0,0.1);
}

.sCategory .detail .category {
	padding-top: 15px;
	height: 280px;
	overflow-y: scroll;
}


.sCategory .sCateName ul, .sCategory .detail .category ul {
	list-style: none;
	padding-left: 0;
}

.sCategory .sCateName ul li, .sCategory .detail .category ul li{
	padding-left: 17px;
	height: 32px;
	cursor: pointer;
}

.sCategory .detail .category label{
	line-height: 32px;
	width: 100%;
	display: inline-block;
	text-decoration: none;
	color: #333;
}

.sCategory .detail .category label:hover {
	color: #39f;
	font-weight: bold;
}

.sCategory .detail .category.top {
	border-right: 1px solid #d3d3d3;
}

.sCategory .detail .category.top a:focus {
	outline: 0;
}

.sCategory .detail .selected {
	background: #f1f8ff;
}

.sCategory .detail .selected label {
	font-weight: bold;
	color: #39f;
}

.sCategory .detail .selected a:after {
	content: '';
    position: absolute;
    top: 5px;
    right: 0;
    width: 14px;
    height: 25px;
    background: url(/assj/images/spr.png) no-repeat 0px -10px;
    
}

.sCategory .sCateName ul li:hover {
	color: #39f;
}

.sCategory .category .rTitle {
	padding-left: 17px;
	font-size: 16px; 
	border-bottom: 1px solid lightgray; 
	padding-bottom: 10px; 
	font-weight: bold
}

.searchCondition {
	padding: 10px;
}

.searchCondition span.item {
	margin: 5px;
}

.searchCondition button{
	margin-right: 20px; 
	margin-bottom: 5px;
	background: #fff; 
	border: 0;
}

.searchCondition button label {
	font-weight: normal;
	cursor: pointer;
	margin-bottom: 0;
}

.searchCondition button .ico {
	text-indent: -9999px;
    display: inline-block;
    vertical-align: middle;
    position: relative;
    top: -1px;
    width: 10px;
    height: 10px;
    background: url(/assj/images/spr.png) no-repeat -86px 0;
}

.sCategory .detail {
	display: none;
	background: #fff;
	z-index: 1;
	width: 403%;
	margin-top: 1px;
	border: 1px solid black;
}

.sCategory .detail .row {
	padding-left: 0;
	padding-right: 0;
}

.sCategory .on {
	display: block;
}

.sCateTitle.active{
	background: #333;
	color: #fff;
}

.careerInput {
	width: 40px;
}

.sc_chk {
	display: none;
}

.chklabel {
	cursor: inherit;
	font-weight: normal;
}

.category.sub .chklabel span {
    padding: 5px 10px;
}

.category.sub .chklabel.check span, .cLi .chklabel.check span {
	border: 1px solid #3399ff;
    border-radius: 5px;
    color: #3399ff;
    font-weight: bold;
}

.cLi span {
	padding: 5px 10px;
}

.cLi .chklabel {
	width: 100%;
}

</style>
<script>
	$(function(){
		/* $('.searchjob').hover(function(){
			$('.searchCategory').show();
		},function(){
			$('.searchCategory').hide();
		}); */
		
		
		$('.sCategory .sCateTitle').click(function(e){
			$(this).parent().siblings().find('.sCateTitle').removeClass('active');
			$(this).toggleClass('active');
			$('.sCategory .sCateTitle').find('span').attr('class', 'down');
			$('.sCategory .sCateTitle.active').find('span').attr('class', 'up');
		})
		
		$('.sCateTitle').click(function(e){
			$(this).parent().find('.detail').toggleClass('on');
			$(this).parent().siblings().find('.detail').removeClass('on');
			if ($('.sCategory.top').find('.on').length > 0) {
				$('.sCategory.top .sCateName').hide();
			} else {
				$('.sCategory.top .sCateName').show();
			}
		});
		
		/* $('.searchCondition').on('click', 'button', function(){
			var id = $(this).data('id');
			$('#' + id).trigger('click');
			$(this).remove();
			$('.sCategory .chklabel[for='+ id +']').removeClass('check');
		}); */
		
		$('#searchBtn').click(function(){
			console.log($(searchForm).serialize());
			 $.ajax({
				url :  '<c:url value="/hireInfo/search.do" />',
				data : $(searchForm).serialize(),
				success : function(res) {
					$('#searchResult').html(res);
				}
			});  
		});
		
	})
</script>

</head>
<body style="background:#ebecee">
	<c:import url="../index/top.jsp" />
	
	<section class="container">
		<div class="row">
			<div class="col-md-2">
				<div>
					<ul class="list-group">
						<li class="list-group-item">채용정보 상세검색</li>
						<li class="list-group-item">지역별</li>
						<li class="list-group-item">직업별(직종)</li>
						<li class="list-group-item">산업별(업종)</li>
						<li class="list-group-item">학력별</li>
					</ul>
				</div>
			</div>
			<div class="col-md-10">
				<div>
					<div class="row">
						<form name="searchForm">
						<div class="col-md-3 sCategory top occu">
							<c:import url="/hireInfo/occupationList.do" />
						</div>
						
						<div class="col-md-3 sCategory top area">
							<c:import url="/hireInfo/areaList.do" />
						</div>
						
						<div class="col-md-3 sCategory top">
							<c:import url="/hireInfo/careerList.do" />
						</div>
						
						<div class="col-md-3 sCategory top">
							<c:import url="/hireInfo/educationList.do" />
						</div>
						<div class="clearfix"></div>
						<div class="col-md-3 sCategory bottom">
							<c:import url="/hireInfo/sectorsList.do" />
						</div>
						
						<div class="col-md-3 sCategory bottom">
							<c:import url="/hireInfo/rankList.do" />
						</div>
						
						<div class="col-md-3 sCategory bottom">
							<c:import url="/hireInfo/majorList.do" />
						</div>
						
						<div class="col-md-3 sCategory bottom">
							<c:import url="/hireInfo/compScaleList.do" />
						</div>
						</form>
					</div>
				</div>
				
				<div class="row clearfix" style="background: #fff">
					<div class="col-sm-10 searchCondition" style="min-height: 100px"></div>
					<div class="col-sm-2" style="padding: 20px 0 0 0; text-align: center" >
						<button type="button" id="searchBtn" class="btn btn-primary btn-lg">검색하기</button>
					</div>
				</div>
				
				<div id="searchResult" class="row" style="margin-top: 20px; margin-bottom: 20px; background: #fff; padding: 10px">
					<%-- <table class="table table-hover notiTable">
						<tr>
							<th class="text-center">기업명</th>
							<th class="text-center">제목</th>
							<th class="text-center">근무조건</th>
							<th class="text-center">등록일·마감일</th>
						</tr>
						
						<c:forEach begin="1" end="10">
							<tr>
								<td>와디즈㈜</td>
								<td>
									<div>
										<a href="#">클라우드펀딩 와디즈(Wadiz) 각 부문별 채용</a> <span class="glyphicon glyphicon-heart-empty scrapIcon"></span>
									</div>
									<p>
										공인중개사,부동산중개,부동산개발,분양,부동산,분양상담사,분양홍보,모델하우스
									</p>
									<p>
										<span>신입·경력</span>
										<span>초대졸↑</span>
										<span>서울 > 강남구</span>
									</p>
								</td>
								<td class="text-center">
									<div>정규직</div>
									<div>회사내규에 따름</div>
								</td>
								<td class="text-center">
									<div>3분 전 등록</div>
									<div>~01/13(토)</div>
								</td>
							</tr>
						</c:forEach>
					</table>

					<nav class="text-center">
						<ul class="pagination">
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav> --%>
				</div>
					
			</div>
			
		</div>
	</section>
	
	<c:import url="../index/footer.jsp" />
</body>
</html>