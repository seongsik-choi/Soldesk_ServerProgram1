<%-- 
0310_[실습 1] 급여 처리
 - URL 주소로 급여, 수당 입력 
 - 천단위 구분문자 "," 출력, DecimalFormat 이용
 - 날짜를 년도와 월만 출력, Date 이용 
 - 전달값이 2개 이상이면 &로 구분
  
  [실행 화면]
  급여 처리
  본봉: 2,200,000 원     ◁─ URL에서 pay 입력
  수당: 200,000 원        ◁─ URL에서 su 입력
  총액: 2,400,000 원
  세금(10%): 240,000 원
  실수령액: 2,160,000 원
  처리 시간: 2020. 3. 19 오후 12:07:16
   http://localhost:9090/jsp_test/core/t8_request2.jsp?pay=1000000&su=2000000
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DecimalFormat" %>

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
 <%
  int pay = Integer.parseInt(request.getParameter("pay"));  // 입력할 본봉
  int su = Integer.parseInt(request.getParameter("su"));    // 입력할 수당
  int tot =  pay + su;  // 총액
  int tax = (int)(tot*0.1);  // 세금
  
  DecimalFormat df = new DecimalFormat("#,###,###원"); 
  Date date = new Date(); // 날짜 처리ㄴ
  String date_str = date.toLocaleString(); // 2. 처리 시간: <%=date.toLocaleString() 퍼센>
  
 %>
 <H2>급여 처리</H2>
<DIV>
  본봉: <%=df.format(pay) %><BR> <%-- DecimalFormat의 변수에 df.format(변수) --%>
  수당: <%=df.format(su) %><BR>
  총액: <%=df.format(tot) %><BR>
  세금(총액 * 10%): <%=df.format(tax) %><BR>
  실수령액(총액-세금): <%=df.format(tot-tax) %><BR>
  처리 시간: <%=date_str %> 
</DIV>


</body>
</html>