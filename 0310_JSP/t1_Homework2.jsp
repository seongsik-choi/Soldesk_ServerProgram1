<%-- 
0310_이미지 목록을 배열에 저장한 후 출력하는 스크립트를 작성
 Q) 배열의 크기보다 큰 데이터 저장 :  images[10] = "./images/food11.jpg";
 A) java.lang.ArrayIndexOutOfBoundsException: 배열의 크기에 비해 저장하려는 데이터의 갯수가 범위를 벗어남.
 A1)  Web상 element는 food11.jpg를 보여줌(error 아님)
 A2) F12 : Element 옆 Console에 들어가 확인 시 
 -> Failed to load resource: the server responded with a status of 404 ()
 -> HTTP error code 404 : 요청 파일 없음
 -> 배열의 문제점 
 
 Q) 0310_homework.jsp를 수정
 
 A) 이미지의 갯수를 변경해도 정상적으로 출력되도록 소스를 제작
 A)ArrayList 사용(Collection) : .jsp에서도 java.util import 필요
 A) <%@page import="java.util.ArrayList"%> 
  
  Q) ArrayList is a raw type. References to generic type ArrayList<E> should be parameterized: Generic 사용 권장 메시지
  A) ArrayList<String> list = new ArrayList<String>();
  A) list.add(번지 수, 데이터) / list.get(번지수)
  A) Array와 다르게 동적으로 데이터 입 출력 가능
 --%>
 
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for문 실습</title>
</head>
<body>

<%-- <H>태그 : 제목을 나타내는 태그 --%>
<H2> 음식 축제 </H2>

<% // JSP Code
ArrayList<String> list = new ArrayList<String>();
list.add(0, "./images/food1.jpg");
list.add(1, "./images/food2.jpg");
list.add(2, "./images/food3.jpg");
list.add(3, "./images/food4.jpg");
list.add(4, "./images/food5.jpg");
list.add(5, "./images/food6.jpg");
list.add(6, "./images/food7.jpg");
// list.add(7, "./images/food8.jpg");
// list.add(8, "./images/food9.jpg");
// list.add(9, "./images/food10.jpg");
// list.add(10, "./images/food11.jpg");
System.out.println("list.size() : " + list.size());
%>

<% // JSP Code
  for(int i=0; i<list.size(); i++){
  if(i% 5 == 0 ){
%> 
    <BR> 
<%
  }// if end
  String str = list.get(i);   // 데이터 추출
%> 
  <%-- ex. 이미지 호출 <IMG src ="경로" style="스타일 지정"> --%>
  <%--  ex. 자바코드 작성 : <%= JAVA 코드 %>  --%>
  <IMG src = "<%=str%>" style="wdith: 200px; height: 150px;">

<%
}// for end
%>

</body>
</html>