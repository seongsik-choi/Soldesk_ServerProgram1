<%-- 
0317
 [20] SSI(Server Side Include), 화면 분할
 [01] CSS 분할, 메뉴 구성, 화면 분할  
  1. CSS 분리
  - 조각 파일들은 다양한 경로에서 포함됨으로 이미지등의 경로를 절대 경로로 사용합니다.
  - 사용: /WebContent 폴더 기준
  <link href="./css/style.css" rel="Stylesheet" type="text/css">  
    ▷ /jsp_test/WebContent/css/style.css
    -----------------------------------------------------------------------------------
    index2.html 파일에서 분리
    
   -----------------------------------------------------------------------------------
  2. 메뉴 페이지 분리  : index2.html의 body 위 부분만 복사
  
  - 조각 파일들은 다양한 경로에서 포함됨으로 이미지등의 경로를 절대 경로로 사용
  - background-image: 태그의 배경으로 이미지를 지정 가능, 파일 경로는 절대 경로 지정
  - position: absolute: 무조건 화면 좌측 상단을 기준으로 위치 지정
  - position: relative: 자신이 속한 부모 태그를 기준으로 위치 지정
  - rgba(50, 50, 255, 0.3): a는 투명도를 지정, 1은 완전 불투명
  - <body> 태그 이전은 복사에서 제외 할것
  - /WebContent 기준, 프로젝트명(Context Path)은 생략
  - /WebContent/menu/top.jsp 사용의 선언
    <jsp:include page="/menu/top.jsp" flush="false" /> 
--%>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta charset="EUC-KR">
<title>index2.html</title>
<style type="text/css">
  
  /* 모든 태그에 적용 */
  *{
     font-family: Malgun Gothic; 
     font-size: 26px; 
     margin: 0px;  /* top right bottom left */
     padding: 0px;
     color: #555555;  }  
  
  .container_main {
    width: 90%; 
    margin: 10px auto;  }
  
  .top_img {
    width: 100%;
    height: 200px;
    background-image: url('/jsp_test/menu/images/top_image.jpg');  }
  
  .top_menu {
    position: relative; /* 부모 태그 기준, 화면 상단 기준*/
    top: 80%; 
    background-color: rgba(50, 50, 255, 0.3);  /* 0.3: Alpha, 투명도 */  
    color: white;   }
  
  .left_menu {
    width: 15%;
    float: left;  }
  
  .content_body {
    width: 84%;
    float: left;  }
  
  .content_bottom {  }
  
  .bottom_menu {
    text-align: center; 
    margin: 20px auto;
    clear: both;  /* 앞쪽 태그의 float 효과를 제거함. */
  }
  
  .li_none {
    list-style: decimal;  }
</style>
</head>

<body>
<DIV class='container_main'>
  
  <DIV class='top_img'>         <!--  이미지 적용 -->
    <NAV class="top_menu">
      나를 찾는 추천 여행 version 2020
    </NAV>
  </DIV>
 
  <DIV style='margin-top: 10px;'> <!-- 좌측 메뉴 + 내용 시작 -->
  
    <DIV class='left_menu'> <!--  좌측 메뉴 시작  float : left로 설정됨 -->
      <DIV style="text-decoration: underline;">국내 여행</DIV>
      <UL>
        <LI class="li_none">제주도</LI>
        <LI class="li_none">천안</LI>
        <LI class="li_none">전주</LI>
      </UL>      
      <DIV style="text-decoration: underline; margin-top: 10px;">해외 여행</DIV>
      <UL>
        <LI class="li_none">베트남</LI>
        <LI class="li_none">호주</LI>
        <LI class="li_none">캐나다</LI>
      </UL>
    </DIV>  <!--  좌측 메뉴 종료 -->
 
    <DIV class='content_body'> <!--  내용 시작 -->