<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</div>
		<div id="mySidenav" class="sidenav">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="font-size: 27px">&times;</a>
		  <a href="#" class="AdminChat">관리자 채팅방</a>
		  <a href="#"></a>
		  <a href="<c:url value='/index.do'/>">공채 홈페이지 가기</a>
		  <a href="#" class="CreateAdmin">새로운 관리자 생성</a>
		  <a href="#">로그아웃</a>
		</div>
	</article>
	<div id="modalLayer">
	  <div class="modalContent">
		  <div style="padding:5px; margin:0 auto; width:95%; height:90%; position:relative;">
	  		<img class="closeModal"src="<c:url value='/icon/xbutton.png'/>" style="float:right;margin-bottom:1em; width:22px;">
		  <div class="newsDetail" style="margin:0 auto; width:100%; height:95%;">
		 	<!-- 채팅 들어갈 부분 -->
		  </div>
	  	</div>
	  </div>
	</div>
</div>
</body>
</html>