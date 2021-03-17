<%-- 
0317
 3. 화면 하단 페이지 분리
  - <body> 태그 이후는 복사에서 제외
  - /WebContent 기준, 프로젝트명(Context Path)은 생략  
  /WebContent/menu/bottom.jsp 선언
  <jsp:include page="/menu/bottom.jsp" flush="false" />  
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
</DIV> <!-- 내용 종료 -->
  </DIV> <!-- 좌측 메뉴 + 내용 종료 -->
  
  <!-- 화면 하단 메뉴 -->
  <DIV style='clear: both;'></DIV> <!-- clear : both; 를 사용해 float(수평 배치) 종료  -->
  <DIV class='bottom_menu'>
    <HR>
    Copyright(R) 국가기간 전략산업 직종 직업 훈련 All rights reserved.
  </DIV>
  
</DIV> <!-- container_main 종료 -->

</body>
</html>