# 1) 서버 프로그래밍1(화면 설계/화면 구현) : (HTML5/CSS3/JSP)
## STS4(Spring Tool Suite4) Tree Structure  
  C:/dic/WS_FRAME/jsp_test
├─.settings    <-- Eclipse에서 관리  
├─build  
│  └─classes  
│      └─jsp_test  <-- 컴파일된 JAVA class  
├─src  
│  └─jsp_test      <-- JAVA 소스  
└─WebContent       <-- Web Service를 위한 dic  
      ├─html           <-- HTML(0308)  
    ├─core           <-- JSP(0309, 0310, 0311)   
    ├─form           <-- JSP(0311, 0312, 0315)    
    ├─css            <-- html(0315, 0316)   
    ├─div(menu)      <-- html(0316)   
    ├─table          <-- html(0316)  
    ├─META-INF  
    └─WEB-INF     <-- web.xml등 환경 설정 파일  
        └─lib         <-- 데이터베이스 Driver등 저장     
___ 
* 0308 : Software 개론, 자바 언어의 이해, JDK1.8.0 설정  
* 0308 : STS 4.6.0(Spring Tool Suite) 이상 설치, Data Management(SQL Development) 설치  
* 0308 : [01] HTML 파일의 제작 실습(H, BR, IMG, A, UL, OL, LI)  
___ 
* 0309 : [02] JDK 8.0, TOMCAT 9 Install, Tomcat 서버 접속, 방화벽 설정  
* 0309 : [03] STS(Eclipse) web project 진행시 추가 설정, 프로젝트 생성/삭제 실습  
* 0309 : [04] JSP 스크립트 기본 문법, JSP 실행, JAVA 실행  
* 0309 : [05] Scriptlet 실습, 자바코드상 태그사용, HTML기반 JSP 결과출력, 표현식(Expression), P, DIV, SPAN, DL, DT, DD, ArrayImage1  
___ 
* 0310 : [05] Scriptlet 실습, ArrayImage2, pre, xmp 태그  
* 0310 : [06] JSP Template 설정(기초 설정) 1  
* 0310 : [07] Page 지시자(Directive), class import, request 내부 객체 실습  
___ 
* 0311 : [08] response 내부 객체, out 내부 객체, application 내부 객체의 사용  
* 0311 : [09] GET, POST Form Data 전송 방식, TEXT, TEXTAREA, PASSWORD, CSS, type 기능
* 0311 : [10] placeholder, autofocus, SELECT OPTION 태그 실습  
___  
* 0312 : [11] RADIO, CHECKBOX, FIELDSET 태그 실습  
* 0312 : [12] 각종 태그의 초기값 설정, HTML 특수 문자 Entity, HTTP 상태 코드  
* t10_output_form2.jsp : SELECT OPTION, RADIO, CHECKBOX, request.getParameter, request.getParameterValues, .indexOf(배열[]>=0) 복습  
___   
* 0315 : 배웠던 내용을 통한 프로그램 만들기(form, proc.jsp)  
* 0315 : [13] CSS(Cascading Style Sheet)의 사용, SPAN, DIV 기본 사용법, A 태그  
 ___  
* 0316 : [14] DIV 태그를 이용한 세로 화면 분할, HEADER, NAV, SECTION, ASIDE, ARTICLE, FOOTER 태그  
* 0316 : [15] TABLE 관련 태그, TABLE, COLGROUP, CAPTION, TR, TD, THEAD, TBODY, TFOOT 태그  
* 0316 : [16] COLGROUP, 열결합, 행결합 실습, 테이블안의 내용 정렬, 테이블 안 IMG 삽입  
___  
* 0317 : [17] INPUT type="number", "range", "date", "time" 속성, OPTGROUP, BUTTON, METER, PROGRESS  
* 0317 : [18] position 속성을 통한 태그의 배치  
* 0317 : [19] 1~2단 메뉴의 구성(HTML, CSS만 사용하여 제작)  
* **dropdown.html(2단 deafult)/ dropdown1.html(1단 default)**
* 0317 : [20] SSI(Server Side Include), index.jsp 제작, 화면 설계, 메뉴 구성, 화면 분할  
