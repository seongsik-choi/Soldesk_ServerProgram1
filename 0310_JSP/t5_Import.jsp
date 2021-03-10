<%-- 
0310_[01] Page 지시자(Directive)
  Q) contentType : jsp의 출력 형식 지정, 문자 셋을 지정
    . 형식: contentType="text/html; charset=UTF-8" 
       예) <%@ page contentType="text/html; charset=UTF-8" %> 
     
    Q) JSP처리 결과가 HTML임으로 MIME Type을 'text/html'과 문자 코드(UTF-8)를 선언.
     A) MIME Type: browser가 출력하는 Type(내용) +브러우저가 인식하는 데이터의 종류를 나타낸 코드값 
          예) image/jpg는 browser가 홈페이지로부터 전송된 내용을 이미지로 인식(대소문자 상관no)
         
    Q) import: 패키지의 import, 중복 사용가능 
      A) 자바에서 패키지를 사용하겠다고 import 선언과 동일
       예) <%@ page import="java.text.DecimalFormat" %> 
     
1. import 속성의 실습
    1) <%@ page contentType="text/html; charset=UTF-8" %>
       Tomcat 서버 입장에서의 한글 처리 방법 선언 import문

    2) <meta charset="UTF-8">  
       Web Browser Chrome 입장에서의 한글 처리 방법 선언 import문

    3) 우리나라 통화기호는 'ㄹ' 키를 '한자'키를 눌러 나타난 특수 문자표에서 '￦'를 사용
        
    4) RGB: Red, Green, Blue 조합하여 생성, #RRGGBB 
        - 16진수 표현: #000000 ~ #FFFFFF     
    
    +) 진법 변환
    2진수 11101 -> 8진수 : 3자리씩 끊기   011 / 101   -> 3  / 5         : 35(8)
    2진수 11101 -> 16진수 : 4자리씩 끊기 0001/ 1101 -> 1 / 13(D)    : 1D(16)   
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SPAN 태그와 DATE 함수</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 32px;}
</style>
</head>

<body>
 <%-- RGB가 Base #FF0000(빨) #00FF00(녹) #0000FF(파) 
   Inline 태그 : 한줄을 강조. <SPAN>과 같은 태그
   색상 Type : https://www.w3schools.com/colors/colors_picker.asp 
 --%>
  <SPAN style='color: #FF0000'>R #FF0000</SPAN><br>
  <SPAN style='color: #00FF00'>G #00FF00</SPAN><br>
  <SPAN style='color: #0000FF'>B #0000FF</SPAN><br>
  
  <SPAN style='color: #FF00FF'>#FF00FF</SPAN><br>
  <SPAN style='color: #FFFF00'>#FFFF00</SPAN><br>
  <SPAN style='color: #00FFFF'>#00FFFF</SPAN><br>
 
  <SPAN style='color: #00FF00'>G #00FF00</SPAN><br>
  <SPAN style='color: #00CC00'>G #00CC00</SPAN><br>
  <SPAN style='color: #00AA00'>G #00AA00</SPAN><br>
  <SPAN style='color: #008800'>G #008800</SPAN><br>
  <SPAN style='color: #005500'>G #005500</SPAN><br>
  <br>
 
 <% // 스크립틀릿(JSP 명시)
/* 
1. <퍼센 @ page import="java.text.DecimalFormat" 퍼센>  : 금액표시
     세 자리마다 , 기호 나타나게 하기(DecimalFormat) 
2. <퍼센 @ page import="java.util.Date" 퍼센> : 시간
3. <퍼센 @ page import="java.text.SimpleDateFormat" 퍼센> : 날짜
*/
 DecimalFormat df = new DecimalFormat("￦ #,###,###원");  // 원화(문자)표시 위해 \
 Date date = new Date();
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
 %>
 <%-- 
 1. 2021년 매출액: <%=df.format(10000000000) %> 
  error. The literal Type is out of range : 100억은 범위 초과
  A) Int Tpye : -21 Billion to 21 Billion 
  A) 100 Billion 뒤에 L(long Type) 붙여주기 
  
2. 처리 시간: <%=date.toLocaleString() %>
  error. The method toLocaleString() from the type Date is deprecated
   : toLocaleString()가 지원이 중단(deprecated)
   A) 
 --%>
  2021년 매출액: <%=df.format(100000000000L) %> <BR>
  처리 시간: <%=date.toLocaleString() %> <BR>
  처리 날짜: <%=sdf.format(date) %>
  
</body>
</html>