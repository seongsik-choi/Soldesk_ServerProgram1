<%-- 
0310_[실습 2] 온라인 적금 계산기
- URL 주소로 월 입금액, 적금 기간 입력 
- 전달값이 2개 이상이면 &로 구분
   http://localhost:9090/jsp_test/core/t9_Request3.jsp?mon=200000&period=24

  [실행 화면]
  적금 온라인 계산기
  월 입금액: ￦ 200,000 원     ◁─ DecimalFormat class
  적금 기간: 24 개월
  납입 원금: ￦ 4,800,000 원
  이자(1 %): ￦ 48,000 원      ◁─ 1%
  총 수령액: ￦ 4,848,000 원  ◁─ 납입 원금 + 발생 이자
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
  *{ font-family: 맑은 고딕; font-size: 26px; }
</style>
</head>
<body>
<%
  int mon = Integer.parseInt(request.getParameter("mon"));
  int period = Integer.parseInt(request.getParameter("period"));
  
  int won = mon*period; // 납입 원금
  int ija = (int)(won*0.1);
  int tot = won + ija;
  
  DecimalFormat df = new DecimalFormat("￦ #,###,###원");  // 원화(문자)표시 위해 \
%>
 
<H2>적금 온라인 계산기</H2>
<DIV>
 월 입금액: <%=df.format(mon) %><BR>
  적금 기간: <%=period %> 개월<BR>
  납입 원금: <%=df.format(won) %><BR>
  이자(1 %): <%=df.format(ija) %><BR>
  총수령액: <%=df.format(tot) %><BR>
</DIV>
 
</body>
</html>