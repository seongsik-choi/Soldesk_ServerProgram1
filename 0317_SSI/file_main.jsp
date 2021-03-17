<%-- 
0317
 ★ SSI 파일의 사용의 경우 아래의 Page Directive는 포함되는 
   JSP 및 포함하는 JSP 파일 모두 : 대소문자 및 공백도 일치해야, 프로젝트 전체에도
   <%@ page contentType="text/html; charset=UTF-8" %>  
   <%@ page contentType="text/html; charset=utf-8" %>  -> X
   
   [실행 화면]
   sub.jsp 추천 도서 1: 나를 찾아서     ->   <%@ include file="./file_sub.jsp" %> SSI 활용
   추천 도서 2: 나는 누구인가?
   
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

<!-- JAVA source 자체가 포함됨 -->
<%@ include file="./sub.jsp" %>

<%
// error. Duplicate local variable book
// String book을 주석처리 하지않은 경우 : 지역변수 중복선언!
//String book = "나는 누구인가?";     
/*  
  -> list.jsp 소스 내에 Int sales = 0; 변수가 선언되어있는 경우
  -> ssi.jsp 소스 내에는 sales 변수 중복 선언 no(변수 선언 중복 주의)
*/

String book2 = "나는 누구인가?";
%>
<H2>추천 도서 2: <%=book2 %></H2>
</body>
</html>