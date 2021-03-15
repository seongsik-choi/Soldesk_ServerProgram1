<%-- 
0312_02] HTML 특수 문자 Entity
 - 특수 문자를 고유 name, 10, 16진수로 표현 가능
 - 태그명 자체를 출력하려면 지정된 코드명으로 선언
 - https://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references
 - https://www.w3schools.com/charsets/ref_html_ascii.asp
 
  ex) 10진수, 16진수 공백으로 출력되나 (웹에서는 1칸만 인정) &nbsp;을 사용 
 - 10진수 : &#32;
 - 16진수 : &#x20;
 
 [03] HTTP 상태 코드
- https://ko.wikipedia.org/wiki/HTTP_%EC%83%81%ED%83%9C_%EC%BD%94%EB%93%9C
- 200(성공): 서버가 요청을 제대로 처리한 경우
- 400(잘못된 요청): 서버가 요청의 구문을 인식하지 못한 경우, Spring에서 정수등 서버가 값을 전달 받지 못한 경우
- 404(Not Found, 찾을 수 없음): 폴더나 파일명이 존재하지 않는경우(오타등)
- 500(내부 서버 오류): JSP 코드에 오타가 있는 경우 자주 발생, JAVA 코드 오류
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
 <H2>DIV 태그 사용법</H2>
 <DIV style='width: 50%'> <br> &lt;은 왼쪽 괄호 <BR>
  &gt; 는 오른쪽 괄호<A href="http://">태그의 사용법</A></DIV>
  
  &lt;DIV style='width: 50%;'&gt;
  &lt;br&gt; 
  &amp;lt;은 왼쪽 괄호임<br> 
  &lt;A href="http://"&gt;사용법&lt;/A&gt; 
  &lt;/DIV&gt;
  
 <H2>Single quotation의 사용</H2>  <!--&apos -->
<input type='text' value='&apos;8월 바다&apos;.. '
          style='width: 80%;'>
          
<H2>Double quotation의 사용</H2>   <!-- &quot -->
<input type='text' value='"9월 단풍"'
          style='width: 80%;'>
<input type='text' value="&quot;10월 설악산&quot;"  
          style='width: 80%;'>
          <br>
 
 A<BR> <!-- HTML : 공백 무시 -->
 &nbsp;A<BR>
 &nbsp;&nbsp;A<BR>
 &nbsp;&nbsp;&nbsp;A<BR> <!--  쉽게 탭키라 생각 -->
 
 

</body>
</html>