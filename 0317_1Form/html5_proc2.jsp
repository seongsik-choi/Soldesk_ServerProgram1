<%-- 
0317_ html5_form.jsp의 Action 부분2
 form의 구입 내역 검색(shopping_begin, shopping_end) 부분 Action
 
 [실행화면]
 구입 내역 검색 기간: 2021-03-02 ~ 2021-03-19
 From으로 돌아가기
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 24px;}
</style>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String shopping_begin = request.getParameter("shopping_begin");
String shopping_end = request.getParameter("shopping_end");
%>

구입 내역 검색 기간: <%=shopping_begin %> ~ <%=shopping_end %>

<BR>
 <!-- Form으로 돌아가기 위한 반환문 -->
<A href="./html5_form.jsp" >From으로 돌아가기</A>

</body>
</html>