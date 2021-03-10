<%-- 
0310_ 
System.out.println(), out.println(), out.print()의 사용
    - System.out.println("겨울"): DOS 콘솔에 출력
    - out.println("봄"): HTML로 변환된 소스의 줄을 변경
    - out.print("봄"): HTML로 변환된 소스가 한줄로 출력
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>println()</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 32px;}
</style>
</head>
<body>
<% // 스크립 틀릿
System.out.println("요청 처리됨.");  // Console
out.println("<DL>");
out.println("<DT>인공지능 영화</DT>");    // out.println("웹 출력"))
out.println("<DD>AI 2001</DD>");
out.println("<DD>트랜센던스 2014</DD>");
out.println("<DD>엑스마키나 2015</DD>");
out.println("<DD>이미테이션게임 2015</DD>");
out.println("</DL>");
 
// out.print()
out.print("<DL>");    // 데이터 목록 태그 생성
out.print("<DT>영어 학습 영화</DT>"); // 데이터 항목
out.print("<DD>맘마미아</DD>");       // 데이터 설명1
out.print("<DD>러브 액츄얼리</DD>");  // 데이터 설명2
out.print("<DD>악마는 프라다를 입는다.</DD>");  // 데이터 설명3
out.print("<DD>김씨네 편의점(캐나다)</DD>");    // 데이터 설명4
out.print("한줄");      // 한줄에 출력
out.print("에 출력");  // 한줄에 출력
out.print("</DL>");
%>
</body>
</html>