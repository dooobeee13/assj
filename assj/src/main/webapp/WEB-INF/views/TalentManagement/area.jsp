<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="TStopion_div option_flo area"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<div style="height: 100%; width: 20%; float: left;">
		<div class="col-div-100-10" style="border-bottom: 1px solid #b8b8b8;">
			<h3 class="content_title">지역</h3>
		</div>
		<div class="col-div-100-90 div-li-padding area-select"
			style="overflow-y: scroll">
			<ul class="col-ul-100-100">
				<li id="area-1" class="col-li-1 bt-bl-br-none noChoose"
					style="height: 3.3em;"><a href="#">서울</a></li>
				<li id="area-2" class="col-li-1 bt-bl-br-none noChoose"
					style="height: 3.3em;"><a href="#">경기</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-3">광주</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-4">대구</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-5">대전</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-6">부산</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-7">울산</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-8">인천</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-9">강원</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-10">경남</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-12">경북</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-13">전남</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-14">전북</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-15">충북</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-16">충남</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-17">제주</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-18">세종</a></li>
				<li class="col-li-1 bt-bl-br-none noChoose" style="height: 3.3em;"><a
					href="#" id="area-19">전국</a></li>
			</ul>
		</div>
	</div>
	<div class="area-1-detail col-div-80 area-Background" style="background-image: url('<c:url value="/images/backg.jpg"/>');">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<li class="col-li-4-nb"><input class="mini-checkbox"
						type="checkbox" id="a1-1"><label for="a1-1">강남구</label></li>
					<li class="col-li-4-nb"><input class="mini-checkbox"
						type="checkbox" id="a1-2"><label for="a1-2">강동구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a1-3"><label for="a1-3">강북구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a1-4"><label for="a1-4">강서구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a1-5"><label for="a1-5">관악구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a1-6"><label for="a1-6">광진구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="7"><label for="7">구로구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="8"><label for="8">금천구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="9"><label for="9">노원구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="10"><label for="10">도봉구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="11"><label for="11">동대문구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="12"><label for="12">동작구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="13"><label for="13">마포구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="14"><label for="14">서대문구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="15"><label for="15">서초구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="16"><label for="16">성동구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="17"><label for="17">성북구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="18"><label for="18">송파구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="19"><label for="19">양천구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="20"><label for="20">영등포구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="21"><label for="21">용산구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="22"><label for="22">은평구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="23"><label for="23">종로구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="24"><label for="24">중구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="25"><label for="25">중랑구</label></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->

	<div class="area-2-detail col-div-80">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a2-1"><label for="a2-1">가평군</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a2-2"><label for="a2-2">고양시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a2-3"><label for="a2-3">고양시
							덕양구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a2-4"><label for="a2-4">고양시
							일산동구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a2-5"><label for="a2-5">고양시
							일산서구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="a2-6"><label for="a2-6">과천시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="7"><label for="7">광명시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="8"><label for="8">광주시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="9"><label for="9">구리시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="10"><label for="10">군포시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="11"><label for="11">김포시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="12"><label for="12">남양주시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="13"><label for="13">동두천시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="14"><label for="14">부천시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="15"><label for="15">부천시 소사구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="16"><label for="16">부천시 오정구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="17"><label for="17">부천시 원미구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="18"><label for="18">성남시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="19"><label for="19">성남시 분당구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="20"><label for="20">성남시 수정구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="21"><label for="21">성남시 중원구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="22"><label for="22">수원시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="23"><label for="23">수원시 권선구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="24"><label for="24">수원시 영통구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="25"><label for="25">수원시 장안구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="26"><label for="26">수원시 팔달구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="27"><label for="27">시흥시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="28"><label for="28">안산시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="29"><label for="29">안산시 단원구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="30"><label for="30">안산시 상록구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="31"><label for="31">안성시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">안양시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">안양시 동안구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">안양시 만안구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">양주시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">양평군</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">여주시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">연천군</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">오산시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">용인시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">용인시 기흥구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">용인시 수지구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">용인시 처인구</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">의왕시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">의정부시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">이천시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">파주시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">평택시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">포천시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">하남시</label></li>
					<li class="col-li-4-br"><input class="mini-checkbox"
						type="checkbox" id="32"><label for="32">화성시</label></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
</div>
<!--TStopion_div option_flo 지역별 끝 -->