<%-- 
0317_ html5_form.jsp의 Action 부분
  form의 구입 내역 검색(shopping_begin, shopping_end)를 제외한 나머지 Action
  
  [실행화면]
  이자: 15.0
  JAVA: 50
  현재온도: null
  예약날짜: 2021-03-17
  예약시간: 09:30
  메뉴: 야채 김밥
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
// meter(id=heat)와 Progress의
// name 속성, id 속성은  undefined : 출력 전용 이기에 
request.setCharacterEncoding("UTF-8");
String rest = request.getParameter("rest");
String java = request.getParameter("java");
String heat = request.getParameter("heat"); // id속성 가져올수없음. 작성은 가능
String reser_date = request.getParameter("reser_date");
String reser_time = request.getParameter("reser_time");
String food = request.getParameter("food");

%>
이자: <%=rest %><br>
JAVA: <%=java %><br>
현재온도: <%=heat %><br>
예약날짜: <%=reser_date %><br>
예약시간: <%=reser_time %><br>
메뉴: <%=food %><br>

<BR>
 <!-- Form으로 돌아가기 위한 반환문 -->
<A href="./html5_form.jsp" >From으로 돌아가기</A>

</body>
</html>