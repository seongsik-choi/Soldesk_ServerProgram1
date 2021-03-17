<%-- 
0317
 4. 시작 페이지, index.jsp 
   - flush="false": index.jsp에 처리 결과를 통합하여 같이 접속자에게 출력
   
 A1) css 폴더의 style.css를 호출 
   <link href="./css/style.css" rel="Stylesheet" type="text/css">
   
  A2) menu 폴더의 top.jsp와 bottom.jsp를 jsp:include 함
   <jsp:include page="/menu/top.jsp" flush="false" />
   -> index.jsp의 <body> 태그 아래로 top.jsp가 include 했기에
   -> top.jsp는 <body> 태그 전까지 전부 삭제
   
   <jsp:include page="/menu/bottom.jsp" flush="false" />  
   -> index.jsp의 가장 밑 <body> 태그와 <html> 태그 위에 bottom.jsp가 include가 했기에
   -> bottom.jsp 가장 밑  <body> 태그와 <html> 태그는 삭제
   
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<!-- /WebContents 기준 -->
<link href="./css/style.css" rel="Stylesheet" type="text/css">
</head>

<body>

<!-- 
/WebContents 기준, 프로젝트명(Context Path)은 생략함. 
/WebContent/menu/top.jsp를 구성요소라 가져다 사용
-->
<jsp:include page="/menu/top.jsp" flush="false" />

<DIV style="margin: 10px auto; width:100%; text-align: center;" >
 <IMG src="./menu/images/puppy10.jpg" style="width:90%;">
</DIV>

<!--  -->

<!-- 
/WebContents 기준, 프로젝트명(Context Path)은 생략함. 
/WebContent/menu/bottom.jsp
-->
<jsp:include page="/menu/bottom.jsp" flush="false" />  
</body>
</html>