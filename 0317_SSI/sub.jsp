<%--
0317
 [20] SSI(Server Side Include), index.jsp 제작, 화면 설계, 메뉴 구성, 화면 분할       
  [01] SSI(Server Side Include) 
     - 하나 이상의 jsp페이지에서 반복적으로 사용되는 코드를 모아 [특정 jsp페이지]에
       저장해두고, 필요시에 추가하여 사용하는 방법

 1) SSI의 주요 대상
   - JSP 페이지에 공통적으로 등장하는 메뉴
   - JSP 페이지에 중복해서 등장하는 java 코드가 주로 대상
   - 필요한 패키지의 IMPORT 선언
   - 기타 JSP 페이지에서 중복 사용되는 코드 조각이나 변수를 선언
  
   - DBMS 접속 루틴의 분리, DBMS 관련 객체의 메모리 해제, 보안 설정등은
     Spring framework등으로 분리되어 처리
 
 1.  file include: 처리 결과가 합쳐지는 것이 아니라 JSP 파일의 소스가 하나의 파일에 
  합쳐진 다음 실행되는 패턴, 중복 변수 및 객체 선언 주의
      
     list.jsp 소스 + ssi.jsp 소스 → jsp 통합 큰 소스 → 실행 → HTML 태그
   
   -> list.jsp 소스 내에 Int sales = 0; 변수가 선언되어있는 경우
   -> ssi.jsp 소스 내에는 sales 변수 중복 선언 no(변수 선언 중복 주의)
     ----------------------------------------------------------------------------   
     JSP 소스가 결합되어 실행됨, 변수 선언 중복 주의.

   - 사용 방법 
     <%@ include file="Local URL" %><-- 현재 프로젝트의 JSP만 선언 가능
     <%@ include file="./ssi.jsp" %> 
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
 
<%
String book = "나를 찾아서";
%>
<H2>sub.jsp 추천 도서 1: <%=book %></H2>