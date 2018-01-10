<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../inc/adminTop.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>" ></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript">

	var p2Time ="";
	var p1Time ="";
	var nowTime ="";
$(function(){
	
	/* setInterval(function(){
		p2Time ="";
		p1Time ="";
		nowTime ="";
		
		var today = new Date();
		nowTime+=today.getHours()+":"; // 시
		nowTime+=today.getMinutes()+":"; // 분
		nowTime+=today.getSeconds();
		
		today.setSeconds(today.getSeconds()-3);
		p1Time+=today.getHours()+":"; // 시
		p1Time+=today.getMinutes()+":"; // 분
		p1Time+=today.getSeconds();
		
		today.setSeconds(today.getSeconds()-3);
		p2Time+=today.getHours()+":"; // 시
		p2Time+=today.getMinutes()+":"; // 분
		p2Time+=today.getSeconds();
		
		
		
		var chart = c3.generate({
			bindto: "#test",
		    data: {
		        // iris data from R
		        columns: [
		            [p2Time, 30],
		            [p1Time, 120],
		            [nowTime, 120],
		        ],
		        type : 'pie',
		        onclick: function (d, i) { console.log("onclick", d, i); },
		        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
		        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
		    }
		});
		
	},50000); */
});

window.onload=function(){
	var total = c3.generate({
		bindto: "#chart",
	    data: {
	        columns: [
	            ['뉴스', '${news}'],
	            ['공채', '${hireNoti}']
	        ],
	        type: 'bar'
	    },
	    bar: {
	        width: {
	            ratio: 0.5 // this makes bar width 50% of length between ticks
	        }
	        // or
	        //width: 100 // this makes bar width 100px
	    }
	});

	setTimeout(function () {
	    total.load({
	        columns: [
	            ['자기소개서', '${introduction}']
	        ]
	    });
	}, 1000);
	
	setTimeout(function () {
	    total.load({
	        columns: [
	            ['이력서', '${resume}']
	        ]
	    });
	}, 2000);
	var pieData = {
			<c:forEach var="i" begin="0" end="${fn:length(Cslist)-1}" step="1">
				<c:set var="vo" value="${Cslist[i]}"/>
				${vo.csname}:${ vo.total}
				<c:if test="${i!=fn:length(Cslist)-1}">,</c:if>
			</c:forEach>
			};
	//기업 통계 
	
	var chartDonut = c3.generate({
		  bindto: "#CSCOUNT",
		  data: {
		    json: [pieData],
		    keys: {
		      value: Object.keys(pieData),
		    },
		    type: "donut",
		  },
		  donut: {
		    title: "${hireNoti}개의 공채 중 기업당 비율 ",
		  },
		});

}
</script>
<div class="col-div-100">
			<!-- 메인 화면 통계부분 처리 -->
				<div class="analy_box" style=" width:263px; height:132px;">
					<div class="col-div-100-20 divMainbox">
						<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 회원</h2>
					</div>
					
					<div class="col-div-35-80" style="padding-top:1em;">
						<img alt="" src="<c:url value='/icon/visitorimg.png'/>">
					</div>
					<div class="col-div-65-80" style="padding-top:2em;">
						<ul>
							<li style="border-left:1.5px solid #b8b8b8;"><span>총 회원 수 : </span><strong>${totalMem}명</strong></li>
							<li style="border-left:1.5px solid #b8b8b8; padding-top:0.6em;"><span>오늘 가입자 수 : </span><strong>${notTodayMem }명</strong></li>
						</ul>
					</div>
				</div>
				<div class="analy_box" style=" width:263px; height:132px;">
					<div class="col-div-100-20 divMainbox">
						<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 방문객</h2>
					</div>
					<div class="col-div-35-80" style="padding-top:1em;">
						<img alt="" src="<c:url value='/icon/curriculum.png'/>">
					</div>
					<div class="col-div-65-80" style="padding-top:3em;">
						<ul>
							<li style="border-left:1.5px solid #b8b8b8;"><span>오늘의 방문객 : </span><strong>${visitorCount } 명</strong></li>
							<li style="border-left:1.5px solid #b8b8b8;"><span>오늘 페이지뷰 : </span><strong>${todayViewPage } 번</strong></li>
						</ul>
					</div>
				</div>
				<div class="analy_box" style=" width:263px; height:132px;">
					<div class="col-div-100-20 divMainbox">
						<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 1:1 문의 현황</h2>
					</div>
					<div class="col-div-35-80" style="padding-top:2.5em;">
						<img alt="" src="<c:url value='/icon/QNA.png'/>">
					</div>
					<div class="col-div-65-80" style="padding-top:2em;">
						<ul>
							<li style="border-left:1.5px solid #b8b8b8;"><span>총 문의 : </span><strong>${totalReboard }개 </strong></li>
							<li style="border-left:1.5px solid #b8b8b8;"><span>오늘 새로운 문의 : </span><strong>${todayReboard }개 </strong></li>
						</ul>
					</div>
				</div>
				<div class="analy_box" style=" width:263px; height:132px;">
					<div class="col-div-100-20 divMainbox">
						<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 공고</h2>
					</div>
					<div class="col-div-35-80" style="padding-top:1em;">
						<img alt="" src="<c:url value='/icon/user.png'/>">
					</div>
					<div class="col-div-65-80" style="padding-top:2em;">
						<ul>
							<li style="border-left:1.5px solid #b8b8b8;"><span>공고 수 : </span><strong>${totalHN } 개</strong></li>
							<li style="border-left:1.5px solid #b8b8b8; padding-top:0.6em;"><span>오늘 마감 공고 : </span><strong>${DeadLineHN } 개</strong></li>
						</ul>
					</div>
				</div>
			</div>
				<div class="col-div-50-100 statics analy_box_big" style="margin:1em; background:white; width:45%;">
					<div class="col-div-100-10 divMainbox" style="text-align: center;">
						<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 게시물 통계</h2>
					</div>
					<div class="col-div-100-90" id="chart" style="width:90%; margin-left:1em;">
					
					</div>
				</div>
				<div class="col-div-50-100 statics analy_box_big" style="margin:1em; background:white; width:45%;">
					<div class="col-div-100-10 divMainbox" style="text-align: center;">
						<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 현재 모집하고 있는 기업 별 공채 비율</h2>
					</div>
					<div class="col-div-100-90" id="CSCOUNT">
					
					</div>
				</div>
			<%@include file="../inc/adminBottom.jsp"%>
