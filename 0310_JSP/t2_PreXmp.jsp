<%--
0310_<PRE>, <XMP>
1. 7. <PRE>, <XMP> 태그와 웹 표준 준수
- 웹 표준 준수 여부 확인(HTML references): https://www.w3schools.com
- 브러우저는 태그를 파싱(처리)하여 결과를 출력함으로 태그명 자체를 출력 no

 1) <XMP>: 내용에 포함된 태그가 그대로 출력, 문장과 태그가 그대로 출력
                 HTML4.0 이후 not Supported(권장 X)   -> 대신 PRE 태그 사용해라           

 2) <PRE>: 내용에 태그가 포함되어 있으면 태그를 실행하나 줄바꿈 엔터를 그대로 출력,
                    내용이 문장으로만 구성되어 있는 경우 권장
    Q) <PRE>태그 사용시 Entity 사용 -> 출력하려는 태그를 감싸기
    A1) &lt;<태그>&gt;
    A2)  < 부등호 대신 %lt;     > 부등호 대신 %gt;
    A3) &lt;태그&gt;
                 
 --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>/jsp_test/WebContent/core/preXmp.jsp</title>
<style type="text/css">
  * {font-family: 맑은 고딕; font-size: 26px;}
</style>
</head>
<body>
 
 <%-- <XMP> : 내용에 포함된 태그 그대로 출력 --%>
  <xmp>
    1. XMP TAG 소스의 출력
    <div> 태그는 화면 영역을 분할하여 Contents 배치에 주로 사용됩니다.
    또한 
    <br> 태그 효과가 있어 </div>를 선언하면 자동으로 라인이 변경됩니다.
  </xmp>
 
 <%-- <PRE> : 태그는 실행, but 출력은 no --%>
  <pre>
    2. PRE TAG 소스의 출력
    <div> 태그는 화면 영역을 분할하여 Contents 배치에 주로 사용됩니다.
    또한 
    <br> 태그 효과가 있어 </div>를 선언하면 자동으로 라인이 변경됩니다.
  </pre>
 
  <%-- 한줄에 출력 --%>
   0. 태그 없이 출력
    봄
    여름
    가을
    겨울
    
    <%-- <PRE> 태그를 사용해 엔터기능을 통해 출력 --%>
    <pre>
    1. PRE TAG의 출력
    봄
    여름
    가을
    겨울
    </pre>
    
    <%-- <PRE> 태그를 사용해 엔터기능을 통해 출력 --%>
    <pre>
    2. PRE TAG의 출력
   <div style='background-color:#FF0000; color: #FFFFFF;'>
    봄
    여름
    가을
    겨울
   </div>
    </pre>
    
    <%-- <xmp> 태그 사용으로 <div>태그까지 전부 출력 --%>
    <xmp>
    3. XMP TAG의 출력
    <div style='background-color:#FF0000; color: #FFFFFF;'>
    봄
    여름
    가을
    겨울
    </div>
    </xmp>
    
    <pre>
    4. PRE TAG의 출력 XMP와 같게 태그를 출력하는 방법
    &lt;div style='background-color:#FF0000; color: #FFFFFF;'&gt;
    봄
    여름
    가을
    겨울
   &lt;/div&gt;
    </pre>
   
</body>
</html>