<%--
0312_output_form2의 Action 부분 

 - 사용자가 입력한 값을 기반으로 출력하는 request.getParameter를 jsp 선언없이 한줄로 변경하는법
// JSP : String travel1 = request.getParameter("travel1");
// HTML : 2) 여행할 국가(input를 이용한 직접 입력) : <%=travel1 %>

 -> 2) 여행할 국가(....)  <%=request.getParameter("travel1") %>
  A) HTML Code 내에서 request.getParameter 선언하여 실행하기
  
+ 0315_9) 여행할 국가2(오스트리아, 아이슬란드, 스위스 : CheckBox)
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>  <!--  한글 인코딩 -->
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
<H1>output_form2의 Action 부분</H1>

<%
//  String travel1 = request.getParameter("travel1");  // 2) 여행할 국가(input를 이용한 직접 입력)
  String travel3 = request.getParameter("travel3");     // 3) 여행할 국가 기본 선택(SELECT, 단일 선택)
  
  String travel4 = request.getParameter("travel4");   // 5) 여행 국가 기본 선택 2(아이슬란드 : SELECT)
  String[] travel5 = request.getParameterValues("travel5"); // 4)여행 국가 선택 2(SELECT, 다중 선택)
  %>
 
 <!-- SELECT를 이용한 Input 입력, 단일 선택, 다중선택, 기본선택 -->
 <%-- &nbsp; 2) 여행할 국가(input를 이용한 직접 입력) : <%=travel1 %><br><br>--%>
 &nbsp; 2) 여행할 국가(input를 이용한 직접 입력)  <%=request.getParameter("travel1") %><br><br>
   
 &nbsp; 3) 여행 국가 기본 선택 (단일선택) : <%=travel3 %><br><br>
 &nbsp; 4) 여행 국가 기본 선택 2(아이슬란드, 단일선택) : <%=travel4 %><br><br>
 
 &nbsp; 5)여행 국가 선택 2(SELECT, 다중 선택) : <%= travel5.length %> 곳 선택<br>
  <UL style="list-style-type: decimal" >    <!-- 앞에 표시가 1.= OL과 같은 -->
 <% for(int i =0; i<travel5.length; i++  ){
 %>
    <li> <%= travel5[i] %> </li>
 <%
 }
 %>  </UL>
 
 &nbsp; 6) 여행 국가 선택(radio box, 기본선택 되어있는 경우) : 
            <%=request.getParameter("travel6") %><br>
 
 &nbsp; 7) 여행 국가 선택(radio box, 기본선택no, 선택안하면 선택하라고 반환) : 
  <% 
  String travel7 =request.getParameter("travel7");
  if(travel7== null){
  %>
     <!-- <DIV style="color:#FF0000;">라디오 박스를 선택하세요!</DIV> -->
    <span style="color:#FF0000;">라디오 박스를 선택하세요!</span>
  <%
  }// end if
  else {
  %>
      <span><%= travel7 %></span>
  <%
  }// end else
  %> <br>
  
  <%
  String travel8[] = request.getParameterValues("travel8");  
  %>
 &nbsp;  8) 여행할 국가(오스트리아, 아이슬란드, 스위스 : CheckBox) : <%= travel8.length %> 곳 선택<br>
  <UL style="list-style-type: decimal" >   <!-- UL Tag open -->
  <% 
        //System.out.println("travel8 : " +travel8); // Console
        if(travel8 != null){
          for(int i=0; i<travel8.length; i++){  %>    
  <Li><%= travel8[i] %> </Li>
 <%
      }// end for
    }// end if
 %>
 </UL> 
  

 <%
  String travel9[] = request.getParameterValues("travel9");  
  %>
 &nbsp; 9) 여행할 국가2(오스트리아, 아이슬란드, 스위스 : CheckBox) : <%= travel9.length %> 곳 선택<br>
  <UL style="list-style-type: decimal" >   <!-- UL Tag open -->
  <% 
        if(travel9 != null){
          for(int i=0; i<travel9.length; i++){  %>    
  <Li><%= travel9[i] %> </Li>
 <%
      }// end for
    }// end if
 %>
 </UL> 
  



<!-- Form으로 돌아가기 위한 반환문 -->
<A href="./t10_output_form2.jsp" >다시 시도</A>
</body>
</html>


