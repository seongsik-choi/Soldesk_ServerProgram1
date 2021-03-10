<%--
0310_script10.jsp
1. JSP script의  JAVA 변환
 1) JAVA 코드 변환기
   JSP ─▷ JAVA 코드로 변환 ─▷ class로 컴파일 ─▷ 실행 ─▷ Chrome
               ──────────────────────
                                   Tomcat 상에서 실행
 2) "script1.jsp"가 변환된 JAVA 코드 확인
 C:/ai8/ws_frame/.metadata/.plugins/org.eclipse.wst.server.core/tmp0
 /work/Catalina/localhost/jsp_test/org/apache/jsp/core

 3) script1_jsp.java 소스 확인
 4) script1_jsp.class 변환된 class 확인
 
 - JSP는 Servlet으로 변하며 실행(Tomcat Server가 변경)
  --%>     
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <!-- HTML 문서의 문자 인코딩 방식을 명시
                                         문자셋인 UTF-8이 가장 많이 사용  -->
<title>script.jsp</title> <!-- browser의 tap에 print -->
</head>
<body>

<%--  일반적인 java 코드가 쓰임 (scriptlet)
       ex) "부등호% JAVA code &부등호--%>
<% // 스크립틀릿
String name = "성식1";
int kor = 90;
int eng = 70;
int mat = 80;
int tot = kor + eng + mat;
int avg = tot / 3;

System.out.println("-->성명: " + name);   // System.out: 표준 출력 장치, 모니터 콘솔
                                                        // 성명: 성식
// out: web 출력
out.println("WEB");
out.println("성명: " + name);
out.println("국어: " + kor);
out.println("영어: " + eng);
out.println("수학: " + mat);
out.println("총점: " + tot);
out.println("평균: " + avg);
//스크립틀릿
%> 
</body>
</html>