<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이력서 상세보기</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<link href="//www.saraminimage.co.kr/cssutf8/sub_global.css" rel="stylesheet" type="text/css">
<link href="//www.saraminimage.co.kr/css/ui/reset-fonts.css" rel="stylesheet" type="text/css" media="screen, print">
<link href="//www.saraminimage.co.kr/cssutf8/resume-20170816.css" rel="stylesheet" type="text/css" media="screen, print">
<script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/prototype-1.6.0.3.js"></script>
<script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/pngHack.mini.js"></script>

<style type="text/css">


</style>
</head>

<body>

<div class="container" >

<div id="resume_title_view" class="tabDiv">
    <a name="title_view_anchor"></a>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;word-wrap:break-word;word-break:break-all;">
        <tr><td class="res-title-view-new " valign="middle">JAVA,JSP 웹 개발부터 미래 IT산업을 책임질 준비된 신입 !</td></tr>
    </table>
    
</div>
<!-- //이력서 제목 -->

<!-- 지원분야/희망연봉 -->
<div id="resume_apply_dept_view" class="tabDiv" >
    <div class="item-header">
    </div>
    <table class="tbl-view" border="0" cellspacing="0" summary="지원분야/희망연봉" width="100%" >
        <colgroup>
        <col width="118">
        <col width="320">
        <col width="70">
        <col>
        </colgroup>
        <tr>
                        <th>고용형태</th>
            <td>
                <label>
                    정규직                </label>
            </td>
                        
            <th>희망연봉</th>
            <td  >2,000~2,200만원</td>
        </tr>
    </table>
</div>

<!-- //지원분야/희망연봉 -->﻿
<div id="basic_view" class="divide-view-item" style="">
    <a name="basic_view_anchor"></a>
        <div class="item-header res-item" style="text-align:left">
        <h3><span class="item-title">기본정보</span></h3>
            </div>
        <div class="item-contents">
        <div id="basic_profile" class="mb10">
            <table class="tbl-view" border="0" cellspacing="0" summary="기본정보" width="100%">
                <colgroup>
                <col width="118">
                                <col width="320">
                                <col width="70">
                <col>
                </colgroup>
                <tr>
                                        <th>이름</th>
                    <td>
                                                강성치                                            </td>
                    <th>나이/성별</th>
                    <td>1988년 (31세)<span class="res-cut">&nbsp;|&nbsp;</span>남                    </td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td colspan="3">
                                                (420-723) 경기 부천시 원미구 중1동 무지개마을 1202동 1104호                                            </td>
                </tr>
                <tr>
                    <th>휴대폰</th>
                    <td colspan="3">
                        <span id="cell_area">
                                                                                010-9175-0687                                                                            </span>
                                            </td>
                                        </tr><tr>
                                        <th>전화번호</th>
                    <td colspan="3">
                                        010-9175-0687                                            </td>
                </tr>
                                <tr>
                    <th>이메일</th>
                    <td colspan="3">
                                                kangsc0687@hanmail.net                                            </td>
                </tr>
                <tr>
                    <th>구직상태</th>
                    <td colspan="3">구직준비중(재학생)</td>
                </tr>
            </table>
        </div>
        <div id="basic-option" class="mb10">
                        <table class="tbl-view" border="0" cellspacing="0" summary="통화가능시간" width="100%">
                <colgroup>
                <col width="118">
                <col width="239">
                <col width="81">
                <col>
                </colgroup>
                                                <tr>
                                        <th width="118">통화가능시간</th>
                    <td  colspan="3">
                        항시 가능                    </td>
                                    </tr>
                                                <tr>
                    <th width="118">근무각오</th>
                    <td colspan="3">기숙사&nbsp;거주가능</td>
                </tr>
                            </table>
                    </div>

        

            <div id="desire_work_only_view" class="mb10">
                                <table class="tbl-view" border="0" cellspacing="0" summary="기본정보" width="100%">
                    <colgroup>
                        <col width="129px">
                        <col width="129px">
                        <col width="129px">                        <col width="129px">
                        <col width="*">
                    </colgroup>
                    <thead>
                    <tr>
                        <th height="35" class="center-td">학력사항</th>
                        <th class="center-td">경력사항</th>
                                                <th class="center-td">고용형태</th>
                        
                        <th class="center-td">희망연봉</th>
                        <th class="center-td">희망근무지</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="center-td">
                            <strong>대학교(4년)</strong> 재학중                        </td>
                        <td class="center-td">
                            <strong>신입</strong>
                                                    </td>
                                                <td class="center-td">
                            정규직                        </td>
                                                <td class="center-td txt_view">
                            <strong>2,000~2,200만원</strong>
                                                    </td>
                        <td class="center-td"><strong>서울전체</strong></td>
                    </tr>
                    </tbody>
                </table>
            </div>
                
                                    

    <div id="basic-option" class="mb10">
        <table class="tbl-view" border="0" cellspacing="0" summary="기본정보" width="100%">
            <colgroup>
                <col width="118px">
                <col width="239">
                <col width="118px">
                <col width="*">
            </colgroup>

            
                            <tr>
                                            <th>결혼여부</th>
                        <td >미혼</td>
                                                                <th>취미/특기</th>
                        <td >
                            운동,음악감상,게임 / 운동,게임                        </td>
                                    </tr>
            

            
                            <tr>
                    <th>병역대상</th>
                    <td colspan="3" class="break-word">
                        [군필] 2008.05 ~ 2010.04                                                    <span class="res-cut"> | </span> 육군                                                                            <span class="res-cut"> | </span> 병장                                                                            <span class="res-cut"> | </span> 만기제대                                                                </tr>
                    </table>
    </div>
    
    
    
        </div>
    </div>
<div id="school_view" class="divide-view-item">
    <a name="school_view_anchor"></a>
    <div class="item-header res-item">
        <h3>
            <span class="item-title">학력사항</span> 
            <span class="res-cut"> | </span> 
            <span class="title-person">최종학력 - <b>대학교(4년) 재학중</b></span>
        </h3>
            </div>
    <div class="item-contents">
        <div id="basic_school_view" class="mb10">
                            <!-- 초등학교, 중학교, 고입, 중입 검정고시 -->
                                <table class="tbl-view" border="0" cellspacing="0" summary="학력사항" width="100%">
                    <colgroup>
                    <col width="118">
                    <col width="70">
                    <col width="230">
                    <col width="150">
                    <col>
                    </colgroup>
                    <tr>
                        <th height="35">재학기간</th>
                        <th>구분</th>
                        <th>학교명</th>
                        <th>전공</th>
                        <th>학점</th>
                    </tr>
                                                                                                <tr>
                            <td >
                                2015.03 ~ 현재                            </td>
                            <td  class="center-td">
                                                                재학중                            </td>
                            <td class="break-word">
                                한국방송통신대학교                                 (경기)                            </td>
                            <td style="word-wrap:break-word;word-break:break-all;">
                                컴퓨터과학                                                                                            </td>
                            <td class="center-td">-</td>
                        </tr>
                                                                                                        <tr>
                            <td >
                                2004.03 ~ 2007.02                            </td>
                            <td  class="center-td">
                                                                졸업                            </td>
                            <td class="break-word">
                                부명고등학교 (경기도 부천시)                                                            </td>
                            <td style="word-wrap:break-word;word-break:break-all;">
                                문과계열                                                                                            </td>
                            <td class="center-td">-</td>
                        </tr>
                                                                                        </table>
                                        <!-- //고등학교, 대학교 -->
        </div>
        <!-- 직업전문학교/학원 -->
                <!-- //직업전문학교/학원 -->
    </div>
</div><div id="activity_view" class="divide-view-item">
    <a name="activity_view_anchor"></a>
    <div class="item-header res-item">
            <h3 style="position:relative"><span class="item-title">대외활동</span></h3>
            </div>
    <div class="item-contents">
                
                    
                                        <div class="mb10">
                            <table class="tbl-view" border="0" cellspacing="0" summary="교육이수내역" width="100%">
                                <colgroup>
                                    <col width="118">
                                    <col width="95">
                                    <col>
                                </colgroup>
                                                                    <tr>
                                        <th width="118" height="35">교육기간</th>
                                        <th colspan="2">상세내용</th>
                                    </tr>
                                                                                                <tr>
                                    <td width="118" rowspan="3" style="vertical-align:top;">
                                        2014.05 ~ 2014.08<br />(4개월)                                    </td>
                                    <th width="95">구분</th>
                                    <td>교육이수내역</td>
                                </tr>
                                <tr>
                                    <th width="95">활동기관</th>
                                    <td>솔데스크</td>
                                </tr>
                                                                    <tr>
                                        <th width="95">교육내용</th>
                                        <td class="break-word">과정소개,기본설정/코딩&DataType/Operator제어문/배열<br />
Method&static /final & Inheritance /Package,abstractclass /interface InnerClass /Exception & java.lang.Thread/ java.io<br />
WASS etting & Protocol /구동원리<br />
Servlet & JSP기본문법/ 내장객체<br />
JSP기본문법 / 내장객체 / JavaBean  / OracleSQL / Tools<br />
내장객체 / JavaBean/ OracleSQL  / Tools & JDBC/ ConnectionPool Session/ Cookie<br />
회원관리 & 답변형게시판<br />
자료실 / MVC패턴 & MVC방명록<br />
Struts / Spring</td>
                                    </tr>
                                                            </table>
                        </div>
                            
                        
                
                            
    </div>
</div><div id="license_view" class="divide-view-item">
    <a name="license_view_anchor"></a>
    <div class="item-header res-item">
        <h3><span class="item-title">자격증/어학/수상 내역</span></h3>
            </div>
    
    <div class="item-contents">
                    <div class="mb10">
                <table class="tbl-view" border="0" cellspacing="0" summary="자격증/어학/수상 내역" width="100%">
                    <colgroup>
                        <col width="118">
                        <col width="*">
                        <col width="118">
                        <col width="93">
                        <col width="105">
                    </colgroup>
                    <thead>
                    <tr>
                        <th height="35">항목</th>
                        <th>자격증/어학/수상</th>
                        <th>발행처/기관</th>
                        <th>합격구분</th>
                        <th>취득일/수상일</th>
                    </tr>
                    </thead>
                    <tbody>
                                            <tr>
                            <td class="center-td">자격증/면허증</td>
                            <td class="center-td">1종보통운전면허</td>
                            <td class="center-td">경찰청(운전면허시험관리단)</td>
                            <td class="center-td">최종합격                                <!--<img src="//www.saraminimage.co.kr/resume/2011_new/icon_pass.gif" alt="취득(pass)">-->
                            </td>
                            <td class="center-td">2008.01 </td>
                        </tr>
                                            <tr>
                            <td class="center-td">자격증/면허증</td>
                            <td class="center-td">Oracle Certified Java Programmer(OCJP)</td>
                            <td class="center-td">Oracle</td>
                            <td class="center-td">최종합격                                <!--<img src="//www.saraminimage.co.kr/resume/2011_new/icon_pass.gif" alt="취득(pass)">-->
                            </td>
                            <td class="center-td">2014.08 </td>
                        </tr>
                                            <tr>
                            <td class="center-td">자격증/면허증</td>
                            <td class="center-td">정보처리기능사</td>
                            <td class="center-td">한국산업인력공단</td>
                            <td class="center-td">최종합격                                <!--<img src="//www.saraminimage.co.kr/resume/2011_new/icon_pass.gif" alt="취득(pass)">-->
                            </td>
                            <td class="center-td">2014.10 </td>
                        </tr>
                                        </tbody>

                </table>
            </div>     
        

        
            </div>
</div>
<div id="skill_view" class="divide-view-item">
    <a name="skill_view_anchor"></a>
    <div class="item-header res-item">
        <h3><span class="item-title">보유기술 및 능력</span></h3>
            </div>
    <div class="item-contents">
        <table class="tbl-view" border="0" cellspacing="0" summary="보유기술 및 능력" width="100%">
            <colgroup>
            <col width="140">
            <col width="140">
            <col>
            </colgroup>
            <tr>
                <th height="35">보유능력</th>
                <th>수준</th>
                <th>상세내용</th>
            </tr>
                        <tr>
                <td class="center-td break-word">태권도</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">태권도 2단</td>
            </tr>
                        <tr>
                <td class="center-td break-word">기본설정/코딩 & DataType /Operator 제어문/배열</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">과정소개, 자바의 역사/언어의 특징<br />
 연산자/객체지향/예외처리/입출력/네트워킹<br />
 SCJP, SCJD, SCWCD, SCBCD<br />
 Java SE Development Kit 설치, JDK 구성요소, eclipse, EditPlus 설치 및 환경변수설정<br />
? 런타임 인터프리터, 옵션 설명, JAVAC 컴파일 <br />
? 변수 선언 및 할당 방식에 따른 차이점, 변수의 타입 / 형변환, 단항 연산자 / 산술연산자 <br />
  / 비교연산자<br />
? 데이터타입의 개념/목적, 자료형(DataType), 참조형(Reference)<br />
 다중 if 문, 조건식 / 중첩if문 , 비교문, case / break / default</td>
            </tr>
                        <tr>
                <td class="center-td break-word">Method&static /final & Inheritance /Package,</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">초기화;조건식;증감식, 구구단 (연습문제)<br />
 반복문, switch + break 문 / continue문<br />
 배열 선언, 배열 생성, 배열 초기화 / 활용, 다차원 배열, 가변 배열, 배열의 복사, <br />
  클래스, 배열, 인터페이스<br />
 추상화 / 다형성 /재사용, OOP 클래스 만들기<br />
 this키워드, 생성자<br />
 인스턴스와 변수, 접근제한자</td>
            </tr>
                        <tr>
                <td class="center-td break-word">InnerClass /Exception & java.lang.Thread/ jav</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">사용자정의함수, 사용자정의자료형, 메소드접근한정자<br />
 메소드오버로딩이란?, 오버로딩의조건/예/장점<br />
 System.in/System.out/System.err<br />
 static,static 변수, static 메소드, 정적필드 / 초기화블록<br />
 final데이터/final메소드/final클래스<br />
 사용예/사용이유/효율/안정/보안<br />
 extends / 슈퍼클래스 / 서브클래스, 가상참조변수 / 상위클래스 참조, private키워드 /<br />
  접근방법<br />
 생성자와 다양한 메소드, 클래스 종류<br />
 abstract 키워드, interface 키워드, implements 키워드, 함수, 재정의, 다중정의</td>
            </tr>
                        <tr>
                <td class="center-td break-word">WASS etting & Protocol /구동원리</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">replace,concat,lentth,charat,equals,substring<br />
 String형비교하기,String데이터형변환,String으로맵핑하기<br />
 WrapperClass 생성자지원, WrapperClass 기본자료형, WrapperClass 설정,<br />
  WrapperClass 반환, Java.util패키지<br />
 java.lang.Thread클래스,우선순위,Thread사용예 <br />
 입,출력,JAVAAPI,java.io.IOException,사용예</td>
            </tr>
                        <tr>
                <td class="center-td break-word">Servlet & JSP기본문법/ 내장객체</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">웹 서버(Web Application Server) 설명, 정의, 구성<br />
 JSP Servlet / JSP Container 설치 / apache-tomcat-6<br />
 오버라이딩/ contentType지정/ 출력에관계된객체생성,<br />
 클라이언트에게 데이터전송/ 클라이언트전송완료/ 실행방법<br />
 HTTP / HTML, GET 방식 처리 / POST 방식 처리<br />
 Web Server, Request / Response<br />
 init() / service() / destroy()</td>
            </tr>
                        <tr>
                <td class="center-td break-word">JSP기본문법 / 내장객체 / JavaBean  / OracleSQL / Tool</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">서버프로그램의 예외를 처리하는 서블릿의 설계와 개발<br />
 Session 관리를 위한 서블릿의 설계와 개발<br />
 안전한 웹 어플리케이션의 설계와 개발, 스레드 안전한 서블릿의 개발<br />
 요청 -＞ 처리 -＞ 결과, 구조<br />
 pageDirective속성/ include Directive, Action Tag 개념 / Action Tag 종류<br />
 값 가져오기 / 응답처리 / 출력, session메소드 / 객체공유 / 페이지흐름제어 / <br />
  에러데이터 얻기</td>
            </tr>
                        <tr>
                <td class="center-td break-word">내장객체 / JavaBean/ OracleSQL  / Tools & JDBC/ C</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">페이지객체/ 초기파라미터설정/ 예외처리, JavaBean 사용목적 / Beans 개발 규격 <br />
  / 클래스 선언<br />
 Beans을 이용한 회원 가입 양식 만들기<br />
 oracle10g설치/ 데이터베이스설정/ 데이터베이스생성<br />
 SQL쿼리의 개요<br />
 RDMBS의 연동, 환경설정 / 환경설정 / 이용하기<br />
 Session이란? / Session, Cookie 차이점, Cookie 생성 -＞ 저장 -＞전송<br />
 Cookie구성/ Cookie값읽어오기/ Cookie삭제</td>
            </tr>
                        <tr>
                <td class="center-td break-word">회원관리 & 답변형게시판</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">회원관리 양식, 회원 아이디 인증<br />
 회원 로그인, 회원 수정<br />
 회원삭제, 회원로그아웃 <br />
 게시판내용, 답변쓰기 / 등록 하기<br />
 게시글 쓰기, 페이지 구현<br />
 답변쓰기, 답변페이지구현</td>
            </tr>
                        <tr>
                <td class="center-td break-word">자료실 / MVC패턴 & MVC방명록</td>
                <td class="center-td break-word">보통</td>
                <td class="break-word">파일 업로드 구현, 자료실 구현<br />
 Model 1 구성도/ 장점/ 단점, Model 2 구성도/ 장점/ 단점<br />
 Model 1, Model 2차이점 <br />
 클라이언트, 컨트롤러, 모델 <br />
 DBpool설정/ 셋팅 <br />
 입력, 리스트, 페이징</td>
            </tr>
                    </table>
    </div>
</div><div id="family_view" class="divide-view-item">
    <a name="family_view_anchor"></a>
    <div class="item-header res-item">
        <h3><span class="item-title">가족관계</span></h3>
            </div>
    <div class="item-contents">
        <table class="tbl-view" border="0" cellspacing="0" summary="가족관계" width="100%">
            <colgroup>
            <col width="75">
            <col width="75">
            <col width="75">
            <col width="95">
            <col width="75">
            <col>
            </colgroup>
                        <tr>
                <th height="35">형제관계</th>
                <td colspan="5">1남 1녀 중 2째</td>
            </tr>
                                    <tr>
                <th height="35">관계</th>
                <th>성명</th>
                <th>연령</th>
                <th height="35">현재직업</th>
                <th>동거여부</th>
                <th>한줄소개</th>
            </tr>
                                    <tr>
                <td class="center-td">아버지</td>
                <td class="center-td">강수현</td>
                <td class="center-td">59세</td>
                <td class="center-td">회사원</td>
                <td class="center-td">동거</td>
                <td class="">가족을 항상 생각해주시고 관심을 많이 가져주시는 아버지</td>
            </tr>
                                    <tr>
                <td class="center-td">어머니</td>
                <td class="center-td">차유미</td>
                <td class="center-td">54세</td>
                <td class="center-td">회사원</td>
                <td class="center-td">동거</td>
                <td class="">언제나 사랑하는 가족을 위해 고생하시는 항상감사한 어머니</td>
            </tr>
                                    <tr>
                <td class="center-td">누나</td>
                <td class="center-td">강하나</td>
                <td class="center-td">29세</td>
                <td class="center-td">회사원</td>
                <td class="center-td">동거</td>
                <td class="">부모님을 정말 사랑하고 항상 대화하기를 좋아하는 누이</td>
            </tr>
                                </table>
    </div>
</div>
<div id="swot_view" class="divide-view-item">
    <a name="swot_view_anchor"></a>
    <div class="item-header res-item">
        <h3><span class="item-title">SWOT 자기분석</span></h3>
         
    </div>
    <div class="item-contents">
        <div class="mb10">
            <div id="swot_basic">
                <table class="tbl-view" border="0" cellspacing="0" summary="SWOT 자기분석" width="100%">
                    <colgroup>
                    <col width="50%">
                    <col>
                    </colgroup>
                    <tr>
                        <th height="35">강점 <span class="h-subtext">(Strength)</span></th>
                        <th>약점 <span class="h-subtext">(Weakness)</span></th>
                    </tr>
                    <tr>
                        <td valign="top" class="break-word">- 긍정적이고 밝은 성격<br />
- 잘 웃고 호감있는 인상<br />
- 목표를 정하면 끊임없이 노력하는 노력파<br />
- 모르는것을 부끄러워 하지 않고 아는것에 자만하지 않음<br />
- 우수한 구글링 능력. 구글은 나의 또다른 스승</td>
                        <td valign="top" class="break-word">- 리눅스, 유닉스에대한 공부가 추후 더 필요<br />
- 정보처리기사 자격증 미소지 (시험자격미달)</td>
                    </tr>
                    <tr>
                        <th height="35">기회 <span class="h-subtext">(Opportunities)</span></th>
                        <th>위협 <span class="h-subtext">(Threats)</span></th>
                    </tr>
                    <tr>
                        <td valign="top" class="break-word">- 교육기간중 진행한 프로젝트에서의 팀장 경험으<br />
  로 인해 알게된 팀원이였을때의 좋은 자세와 팀워크<br />
- 긍정적이고 밝은 성격으로 원만한 인간관계.<br />
- 포기하지않는 의지<br />
- 대졸이 뭐가 대수냐 내가 앞서가겠다. 나는 고졸<br />
  이다<br />
- 항상 배우려는 자세.</td>
                        <td valign="top" class="break-word">- 형식에 둘러쌓인 반복된 작업.<br />
- 일명 공무원식 마인드와 일처리</td>
                    </tr>
                </table>
            </div>
        </div>
                <div class="mb10">
            <div id="swot_strategy">
                <table class="tbl-view" border="0" cellspacing="0" summary="SWOT 자기분석" width="100%">
                    <colgroup>
                    <col width="27%">
                    <col>
                    </colgroup>
                    <tr>
                        <th colspan="2" height="35px;">전략</th>
                    </tr>
                                        <tr>
                        <th width="27%">SO전략 <span class="h-subtext">(강점-기회전략)</span></th>
                        <td class="break-word">모르는걸 부끄럽다고 생각하지않고 항상 배우려는 자세를 가지고 있어서 선 구글검색 후 질문을 해서 문제를 해결한다.<br />
긍정적이고 밝은 성격으로 주위사람들과 쉽게 친해지고 가까워지며, 원만한 인간관계를 가지고 있다.<br />
목표를 정하면 거침없이 앞만 보고 달려가는 근성파 ,노력파</td>
                    </tr>
                                                            <tr>
                        <th width="27%">ST전략 <span class="h-subtext">(강점-위협전략)</span></th>
                        <td class="break-word">교육기간 중 프로젝트 참여하여 팀장의 역할을 수행하며 팀원들이 어떻게 작업하고 행동해 줘야 팀워크 향상에 도움이 되는지 알게됨.<br />
고졸에 비전공이라 난 불리하다고 생각하며 더욱 더 노력하며. 대졸을 이기는 고졸이 되겠다고 항시 마인드컨트롤 함<br />
이기려면 더욱 더 많이 배우고 노력해야 한다는 걸 알고있음.</td>
                    </tr>
                                                            <tr>
                        <th width="27%">WO전략 <span class="h-subtext">(약점-기회전략)</span></th>
                        <td class="break-word">경쟁자에 비해 학력이 밀리고, 그 때문에 기사자격증 미보유.<br />
앞으로 실무에 임하며 경력을 쌓다가 방통대 졸업 및 기사 자격증 취득과<br />
실무 관련 자격증 취득으로 인해 경쟁력을 높이도록 한다.</td>
                    </tr>
                                                            <tr>
                        <th width="27%">WT전략 <span class="h-subtext">(약점-위협전략)</span></th>
                        <td class="break-word">누구보다 빠르게, 창의적인 아이디어와 실행력을 발휘할 수 있도록 자기계발<br />
을 하여 취업 후에도 신입 답지 않은 신입으로 인정 받도록 한다.</td>
                    </tr>
                                    </table>
            </div>
        </div>
            </div>
</div>
<div id="character_view" class="divide-view-item">
    <a name="character_view_anchor"></a>
    <div class="item-header res-item">
        <h3><span class="item-title">강점/성격</span></h3>
            </div>
        <div class="mb10">
    	<table class="tbl-view" cellpadding="0" cellspacing="0" summary="강점/성격" width="100%">
    		<colgroup>
    			<col width="100">
    			<col width="*">
    		</colgroup>
    		    		<tr>
    			<th width="100">강점</th>
    			<td>책임감이 강함, 집중력이 뛰어남, 분석능력이 우수함, 창의력이 뛰어남, 실행력이 뛰어남, 끈기있음</td>
    		</tr>
    		    		    		<tr>
    			<th>성격</th>
    			<td>신중함, 섬세함, 온화함, 외향적, 낙관적, 이타적</td>
    		</tr>
    		    	</table>
    </div>
    </div>
<div id="standard_introduction_view" class="divide-view-item" style="page-break-before: always;">
    <div class="item-header res-item">
        <h3><span class="item-title">자기소개서</span></h3>
    </div>
    <div class="item-contents">
                    <table class="tbl-view" border="0" cellspacing="0" summary="자기소개서" width="100%">
                                                                <tr>
                    <th height="35"><b>자기소개</b></th>
                </tr>
                <tr>
                    <td class="career break-word" valign="top" height="100%">
                        <span id="introduce_contents">
                            <font color="#08f899"></font><font color="#2cece7"></font>- 말랑 말랑<br />
저는 스펀지와 같은 성격이라고 생각합니다. 말랑말랑한 성격으로 나와 다른 성격의 어떤 사람들을 만나도 그걸 이해하려 하고 부드럽게 받아주는 경우가 많습니다. 그래서 그런지 각기 다른 성격의 사람들이<br />
주변에 많은 것 같습니다. 나와 다른 것이 있으면 그것을 다르다고 배척하지 않고 그것 또한 하나의 개체로 생각하고 포용하는 편입니다. 이런 성격으로 새로운 것을 받아들일 때도 긍정적으로 받아들이고 지금같이 새롭게 하고 싶은 일이 생겼을 때 저에게 닥쳐올 신선한 배움과 경험을 나의 것으로 만드는 데 많은 도움이 될 것이라고 믿고 있습니다.<br />
주변에 많은 분이 저의 장점으로 붙임성 좋고 밝고 쾌활한 것을 꼽아주기도 하지만 단점으론 받아들인 새로운 것들을 꾸준히 유지해가는데 모자란 점이 있다는 것입니다. 전 이 단점을 보완하기 위해 초심을 잃지 않으려 항시 저 자신을 낮추고 항상 제 쪽에서 다가가려고 노력하는 편입니다<br />
- 약점을 장점으로 !<br />
뒤늦게나마 하고 싶은 일이 생겨서 프로그래밍 공부를 시작하게 되었고, 비록 다른 경쟁자들에 비해 낮은 학력과, 낮은 경력, 비전공, 자격증 면에서 뒤처지지만 이런 것을 자신도 항상 느끼고 있어서 `난 다른 사람보다 출발점이 늦고 길이 평탄치 않은 불리한 상태`라며 열심히 하려고 자신을 채찍질하고, 지금 이렇게 열심히 하는 이 마음을 잃지 않으려 꾸준히 마인드 컨트롤 하고 있습니다.<font color="#4bfbc7"></font><font color="#6fe8fc"></font><font color="#c0ffee"></font>                        </span>
                                            </td>
                </tr>
                                                                <tr>
                    <th height="35"><b>성장과정</b></th>
                </tr>
                <tr>
                    <td class="career break-word" valign="top" height="100%">
                        <span id="introduce_contents">
                            <font color="#08f899"></font><font color="#2cece7"></font>- 혼자서도 잘해요.<br />
초등학교 때 IMF로 인해 가정이 어려워 지고 부모님의 맞벌이로 인해 10대초반부터 집에서 혼자 있는 시간이 많았고, 그래서 무슨 일을 할때 혼자서도 내가 뭘 할 수 잇는지 뭘 해야하는지 빠르게 캐치하고 실행하는 습관이 어렸을때부터 몸에 베인것 같습니다. 그래서 더더욱 단체라는 것의 소중함을 알고, 긍정적이고 밝은성격의 아이로 자라서 항상 먼저 다가가려하고 쉽게 가까워지는, 원만한 인간관계를 가지게 됬다<font color="#4bfbc7"></font><font color="#6fe8fc"></font><font color="#c0ffee"></font>                        </span>
                                            </td>
                </tr>
                                                                <tr>
                    <th height="35"><b>입사동기와 포부</b></th>
                </tr>
                <tr>
                    <td class="career break-word" valign="top" height="100%">
                        <span id="introduce_contents">
                            <font color="#08f899"></font><font color="#2cece7"></font> - 더 빠르게, 더 가치있는, 더 창조적인<br />
 현재 IT 글로벌 시대에서 인터넷은 더 이상 재미를 추구하고 정보 수집 이라는 단순한 목적을 넘어서 시간과 장소를 초월하여 사람들과 관계를 맺으며 새로운 문화를 창출하는 문화수단으로서 자리매김 하고 있습니다. 그리고 우리가 개발한 웹사이트를 통해 나와 비슷한 취미를 가진 다른 사람들을 하나로 묶는 커다란 문화공간을 만드는 일은 생각만해도 흥분되지 않을수 없는 일입니다. <br />
- 창조의 즐거움 <br />
 창조의 힘. 누구보다 빠르게, 새롭게, 가치있는 것을 만들기 위해 현실에 안주하지 않고, 혁신적인 아이디어로 변화하고 도전하는 생동감 넘치는 모습에서 목표를 위해 서슴치않게 도전 하려하는 저는 가슴 뜨거워 지는 매력을 느끼고, 속이 꽉 찬 씨앗같은 개발자로서 함께 성장하고 싶습니다.<br />
- 함께 이루고 싶은 나의 꿈 . 웹 개발, 웹 App, 사물인터넷<br />
IT산업의 선두주자 웹 사이트와 웹 어플리케이션. 어떠한 특징이 문화를 생성하는 지에 대해 알고자 끊임없이 고객과 대화하고, 노력하여 항상 앞서 변화해서 문화를 받아들여 현실에 구현하는 것이 개발자로서 꿈꾸는 최고의 만족이 아닐까 생각합니다. 그리고 나아가서 앞으로의 스마트산업과 사물인터넷 산업을 이끌어 갈 수 있는 개발자가 되기 위해 젊고 창조적이며 다양한 서비스로 기초 튼튼, 속이 꽉찬 이곳에서 제공하는 개발환경은 저의 꿈을 이룰수 있는 둘도 없는 무대가 될 것이라고 생각합니다.<font color="#4bfbc7"></font><font color="#6fe8fc"></font><font color="#c0ffee"></font>                        </span>
                                            </td>
                </tr>
                                                                <tr>
                    <th height="35"><b>대학 시절과 교육 경험</b></th>
                </tr>
                <tr>
                    <td class="career break-word" valign="top" height="100%">
                        <span id="introduce_contents">
                            <font color="#08f899"></font><font color="#2cece7"></font>- 하고싶은 일을 할 수 있을때의 행복을 알게된 나.<br />
어렸을적 부터 축구와 구기 운동을 정말 좋아했습니다. 잘하진 못했지만요.<br />
비록 지금은 끊어진 인대 수술과 재활로 인해 옛날같이 축구를 할 수 없게 되었고 힘든 시기를 보냈지만, 이 경험으로 인해 내가 하고 싶은 것을 못하게 되었을때의 절망을 알게되었고, 할 수 있는 것의 소중함을 알게 되었습니다. 앞으론 대한민국을 세계적인 강한 경쟁국으로 만드는데 큰 공헌을 할 IT 업계에 누구보다 빠르고, 창조적이고 미래적인 인재가 될것입니다.<br />
- 대졸이 뭐 대수냐. 대졸 이기는 고졸이 되자 !<br />
 고등학교 시절 집 안에 좋지 않은 일로 인해서 형편이 힘들어지고 다른 친구들이 모두 대학 생활을 누릴 때 전 <br />
부모님 일을 도와드리고 부모님 건강을 돌보면서 보냈고, 당연히 가야 한다고만 생각해서 들어갔던 대학을 <br />
중퇴를 하고 나니 고졸이라는 낙인이 취업에서 가장 큰 걸림돌이 되었었습니다. 하지만 단 한번도 고졸이라는<br />
 것에 부끄럽지 않았고, 20대 초반 그 시절을 후회한적 없었기에 고졸이라는 것을 자극제로 삼자고 <br />
결심하였습니다. 그리고 늦게나마 하고 싶은 일을 하기 위해 공부를 시작하게 되었고, 공부를 하면서 항상 ‘난 <br />
고졸에 비 전공, 경력 조차 없다.’ 라는 생각을 가지고 죽어라 노력했습니다. 절대 같이 공부하는 다른 <br />
학생들에게 지고 싶지 않았고, 그 중 최고가 되고 싶었습니다. 그래서 그런지 프로젝트 팀을 짤 때 제 이름이 <br />
여기 저기 팀으로 이동하면서 팀 별 밸런스의 중심이 되었습니다. <br />
- 교육기간 중 프로젝트 진행 에서의 알게된 팀장의 중요성과 팀워크.<br />
그 후 팀이 만들어지고 팀 원 분들의 추천으로 팀 장을 맡게 되었습니다. 한 달 반이라는 길진 않지만 결코 짧지 않았던 기간 중 팀 장이라는 직책을 맡으며 정말 많은 경험을 하였습니다. 그저 프로젝트 초반엔 내가 할 수 있는 모든 것을 해야겠다는 생각 뿐 이였고,<br />
프로젝트가 끝나갈수록 이 생각은 옳지 않았다는 것을 알게 되었습니다. 좀 더 팀원들을 믿고 서로 대화하며 더 적극적으로 의견을 나눴어야 했는데, 이 부분이 아쉬웠습니다. 성격 탓에 그런지 저만 유일하게 팀원 모두와 친분을 가지고 있었고, 팀원을 제 외한 30명의 같이 공부한 인원 중 대부분의 학생들과도 금방 친해졌었습니다. 그래서 프로젝트를 하는 중에도 제가 맡은 일은 제대로 하면서 동시에 팀원들이 힘들어하는 부분을 같이 <br />
고민하고 해결하였는데, 이 부분에서 저를 제외한 팀원 5명과 각각 맨투맨으로 저와 묶어서 5개의 팀 플레이가<br />
 생겨 났다 는걸 나중에서야 깨닳게되었습니다. 이 부분에서 좀 더 효율적으로 비슷한 작업을 하는 인원을 2명씩 묶어서 서로 일찍부터 의견도 공유하고 많은 대화를 나눴으면 좀 더 나은 프로젝트가 되었을 것이였다고 <br />
생각합니다. 그 외에 팀장으로써 책임감과 리더쉽의 중요성을 머리가 아닌 마음으로 알게 되었고, 이러한 경험이 앞으로 팀원으로써의 제가 어떻게 팀워크에 잘 녹아들고 좀 더 나은 효율의 작업을 할 수 있는지에 대해 <br />
알게되었고, 더욱 나아가서 언젠가 할 수도 있는 팀장의 역할을 맡았을 시에 더 나은 리더로써 발전할 수 있는 <br />
좋은 경험이였다고 생각합니다.<br />
<font color="#4bfbc7"></font><font color="#6fe8fc"></font><font color="#c0ffee"></font>                        </span>
                                            </td>
                </tr>
                                            </table>
            </div>
</div>
<div id="attach_port_files_view" class="divide-view-item">
	<a name="attach_port_files_view_anchor"></a>
	<div class="item-header res-item">
		<h3>
			<span class="item-title">포트폴리오</span> 
			<span class="res-cut"> | </span> 
			<span class="title-person">총 <b>1</b>건</span>
		</h3>
		
		        
        
	</div>

	<div class="item-contents">
	
		
		<table class="port_cell" border="0" cellspacing="0" summary="포트폴리오">
			<colgroup>
				<col width="20">
				<col>
				<col width="20">
			</colgroup>
			<tr>
				<td width="20"></td>
				<td>
									        						<table class=" " border="0" cellspacing="0" summary="">
						<colgroup>
							<col width="110">
							<col width="20">
							<col>
						</colgroup>
						<tr><td colspan="3" height="18">&nbsp;</td></tr>
						<tr>
							<td class="thumb" width="110">
								<table border="0" cellspacing="0" summary="">
									<tr>
										<td>
											<a  href="https://pds3.saramin.co.kr/webfile/download_memberfile_security.php?file=person%2Fresume_filebox%2F201409%2F12%2F1410500323_7f1d-79a02950_resume_filebox.pptx&amp;name2=Ssol_Tour.pptx" title="Ssol Tour.pptx" style="font-size:0" ><img src="//www.saraminimage.co.kr/vt/etc/ico_thm_pptx.png" border="0" alt="Ssol Tour.pptx"></a>										</td>
									</tr>
								</table>
							</td>
							<td width="20"></td>
							<td>
								<table border="0" cellspacing="0" summary="">
									<tr>
										<td class="title" height="20">
											[포트폴리오] <a  href="https://pds3.saramin.co.kr/webfile/download_memberfile_security.php?file=person%2Fresume_filebox%2F201409%2F12%2F1410500323_7f1d-79a02950_resume_filebox.pptx&amp;name2=Ssol_Tour.pptx" title="Ssol Tour.pptx" style="font-family:굴림, gulim, sans-serif;font-size:12px;" >Ssol Tour.pptx</a>										</td>
									</tr>
									<tr class="cont_be">
										<td>
											<table border="0" cellspacing="0" summary="">
											<colgroup>
												<col width="62">
												<col>
											</colgroup>
																						<tr>
												<td width="62">&#183; 작업기간</td>
												<td>
												2014-07-04 ~ 2014-08-13												 (1개월 10일)												</td>
											</tr>
						        				 
						        														<tr>
												<td width="62">&#183; 작업인원</td>
												<td>
												6명												</td>
											</tr>        		
						        									        														<tr>
												<td width="62">&#183; 작업 툴</td>
												<td>Eclipse</td>
											</tr>
						        				    	        		
						        			    		
											<tr>
												<td width="62">&#183; 작품소개</td>
												<td>SsolTour - Strut 프레임워크를 기반으로 한 팀 단위 프로젝트

(주)솔데스크 교육 중 팀 단위 프로젝트 경험 및 교육 복습을

위한 프로젝트 설계 및 계획, 구현. 

위 과정을 통해 팀 단위 프로젝트의 중요성 및 방법 교육

팀장 이라는 위치의 중요성 및 자신의 문제점 발견, 수정</td>
											</tr>
						        													</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr><td colspan="3" height="18"></td></tr>
					</table>
										
									</td>
				<td width="20"></td>
			</tr>
		</table>
		
		 	                		
		
		
	</div>
</div>
            <!-- //저장된 순서대로 항목별 렌더 -->
            
            <!-- footer -->
            <div id="resume_footer">
                <div class="sign">
                    위의 모든 내용은 사실과 다름없음을 확인합니다.<br /> 
                    작성일 :<b> 2015년 02월 02일 (월)</b>
                     / 작성자 : <b>강성치</b>
                </div>
                <div class="legal_notice_box">
                    위조된 문서를 등록하여 취업활동에 이용시 법적 책임을 지게 될 수 있습니다.<br>
                    (주)사람인HR은 구직자가 등록한 문서에 대해 보증하거나 별도의 책임을 지지 않으며<br>
                    첨부된 문서를 신뢰하여 발생한 법적 분쟁에 책임을 지지 않습니다. (개인회원약관 제15조 관련)<br>
                    또한 구인/구직 목적 외 목적으로 이용 시 이력서 삭제 혹은 비공개 조치될 수 있습니다.
                </div>
            </div>        
            <!-- //footer -->
            
                    </div>
    </div>

</div>

</body>
</html>