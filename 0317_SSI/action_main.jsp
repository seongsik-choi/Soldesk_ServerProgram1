<%-- 
0317
 2. JSP include action 태그: jsp가 처리되어 실행결과가 HTML로 변경되어 메인 페이지에 포함
   - 변수 충돌이나 간섭 없음
   - 메뉴 구성시 주로 사용
   - flush='false': 여러개의 jsp페이지의 실행 결과가 하나로 결합되어 접속자에게 전송 
   A) flush : 내보내다.

 1) file include
    <!-- JAVA source 자체가 포함됨 -->
    <%@ include file="./file_sub.jsp" %>
    
    A) 변수 선언 중복 no
    
 2) JSP include
    <!-- JAVA source가 실행되어 HTML로 포함됨 -->
     <jsp:include page="/menu/top.jsp" flush='false' />
   
     A) file include방식과 다르게, 지역변수 중복 선언이 가능!!

     list.jsp 소스 처리 결과 HTML + top.jsp의 처리 결과 HTML → HTML 통합 → 출력
     -----------------------------------------------------------------------------------------   
     JSP가 실행된 소스가 HTML 형태로 결합
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>

<!-- JAVA source가 실행되어 HTML로 포함됨 -->
<jsp:include page="./sub.jsp" flush="false" />

<%
String book = "나는 누구인가?";
String book2 = "나는 누구인가?";
%>
<H2>추천 도서 2: <%=book2 %></H2>

</body>
</html>