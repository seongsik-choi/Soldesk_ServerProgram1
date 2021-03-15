<%--
0312_
2. SELECT 태그의 초기값 설정, 
3. RADIO 태그의 초기값 설정
4. CheckBox 태그의 초기값 설정
   - CheckBox의 name을 동일하지 않게 생성할 것
      예) trip0, trip1, trip2, trip3, trip4
     "문자열".trim(): 문자열 좌우의 공백을 제거

 Q) 일반배열과(문자열 -> 배열형) 드롭다운(선택, 다중선택)
- 3항 연산자: (조건)?참:거짓

+ 0315_9) 여행할 국가2(오스트리아, 아이슬란드, 스위스 : CheckBox)
 -> CheckBox의 selected='selected'를 다르 방식으로 표현
  ex) System.out.println("오스트리아, 아이슬란드, 스위스".indexOf("트리아"));    // 2(두번쨰  index 부터 존재)
  ex) System.out.println("오스트리아, 아이슬란드, 스위스".indexOf("오스트리아")); // 0 
  ex) System.out.println("오스트리아, 아이슬란드, 스위스".indexOf("스위스"));     // 13
  -> .indexOF를 이용 : 문자열이 존재하면 0 이상의 값 return
  
  A)  <%=("오스트리아, 아이슬란드".indexOf(trips_array[i]) >= 0)?"checked='checked'":"" %>
  
 --%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>output_form2.jsp</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>

 <!-- POST방식의 Mthod -->
<form name='frm' action='./t10_output_proc2.jsp' method='POST'>
<%
// 1) 일반 배열로 출력하기(문자열형으로 만들어서 넣는 방법)
// 문자열을 분할하는 메서드 = split("/"); 단위로 분할
String trips = "오스트리아/베트남/아이슬란드/스위스/캐나다";
String[] trips_array = trips.split("/");    
%>

여행할 국가 순위<br>
&nbsp;1)For문을 이용한 List 출력
<UL style="list-style-type: decimal;">  <!-- 순서가없는 리스트지만 style 지정 : decimal  -->
  <% 
  for (int i=0; i< trips_array.length; i++) { %>
    <LI><%=trips_array[i] %></LI>
  <%
  }%>
</UL>

&nbsp; 2) 여행할 국가(input를 이용한 직접 입력)
<input type='text' name='travel1' 
           placeholder="ex)오스트리아/베트남/아이슬란드/스위스/캐나다 중 입력하시오." 
           autofocus="autofocus" style="width: 70%;">  <BR><BR>
           <%-- placeholder="도움말": 입력 도움말 출력 --%>

&nbsp; 3) 여행할 국가 기본 선택(단일선택)
<SELECT name="travel3">
  <%
  for (int i=0; i< trips_array.length; i++) { %>
    <OPTION value="<%=trips_array[i] %>"><%=trips_array[i] %></OPTION>
  <%
  }%>  
</SELECT><BR>

&nbsp; 4) 여행 국가 기본 선택 2(아이슬란드, 단일선택)
<SELECT name="travel4" >
  <%
  for (int i=0; i< trips_array.length; i++) {%>
    <OPTION value="<%=trips_array[i] %>" 
      <%=(trips_array[i].equals("아이슬란드"))?"selected='selected'":"" %>><%=trips_array[i] %></OPTION>
  <%
  }%>  
</SELECT><BR><BR>

&nbsp; 5) 여행 국가 선택 다중(SELECT, 다중 선택)
<SELECT name="travel5" multiple="multiple"> <!-- multiple 속성 적용 다중 선택 -->
  <%
  for (int i=0; i< trips_array.length; i++) {
    if (trips_array[i].equals("스위스")) { %>
      <OPTION value="<%=trips_array[i] %>" selected="selected"><%=trips_array[i] %></OPTION>
    <%  
    } else { %>
      <OPTION value="<%=trips_array[i] %>"><%=trips_array[i] %></OPTION>
    <%  
    } %>
  <%
  }%>  
</SELECT><BR><BR>


&nbsp; 6) 여행 국가 선택(radio box, 기본선택 되어있는 경우)<br>
<%
for (int i=0; i < trips_array.length; i++) {
%>
  <label style="cursor: pointer;" >
    <input type="radio" name="travel6"  value="<%=trips_array[i]%>"
               <%=(trips_array[i].equals("스위스")?"checked='checked'":"") %>><%=trips_array[i]%>
  </label>
<%  
}
%><BR><BR>

  <%-- radio 버튼이 선택이 되지않은 경우-> 메모리 참조 no(null)
           Q) 선택되지않는 경우, if~else문을 통해 메시지 출력--%>
&nbsp; 7) 여행 국가 선택(radio box, 기본선택no, 선택안하면 선택하라고 반환)<br>
<%
for (int i=0; i < trips_array.length; i++) {
%>
  <label style="cursor: pointer;" >
    <input type="radio" name="travel7"  value="<%=trips_array[i]%>"
               ><%=trips_array[i]%>
  </label>
<%  
}
%><BR><BR>

&nbsp; 8) 여행할 국가(오스트리아, 아이슬란드, 스위스 : CheckBox)<br>
<%!
public String select(String area, String select_area) {
  String sw = "";
  String[] areas = area.split(",");
  System.out.println("---------------------------------");
  for (int i=0; i<areas.length; i++) {
    System.out.println("-> " + i);
    // System.out.println(">" + areas[i].trim() + "<");
    if (areas[i].trim().equals(select_area)) {
      sw = "checked='checked'";
      System.out.println(select_area + " 발견됨");
      break;
    }
  }  
  return sw;
}
%>

<%
for (int i=0; i < trips_array.length; i++) {
  System.out.println("---------------------------------");
  System.out.println("-> 전체 국가중에 " + trips_array[i] + " 비교");
%>
  <label style="cursor: pointer;">
    <input type="checkbox" name="travel8" value="<%=trips_array[i]%>"
               <%=select("오스트리아, 아이슬란드, 스위스", trips_array[i]) %>><%=trips_array[i]%>
  </label><br>  
<%  
}
%>
<br>
    

&nbsp; 9) 여행할 국가2(오스트리아, 아이슬란드, 스위스 : CheckBox)<br>
<%
for (int i=0; i < trips_array.length; i++) {
  System.out.println("---------------------------------");
  System.out.println("-> 전체 국가중에 " + trips_array[i] + " 비교");
%>
  <label style="cursor: pointer;">
    <input type="checkbox" name="travel9" value="<%=trips_array[i]%>"
               <%=("오스트리아, 아이슬란드".indexOf(trips_array[i]) >= 0)?"checked='checked'":"" %>>
               <%=trips_array[i]%>
  </label><br>
<%  
}
%>
<br>

  <button type="submit">등록</button> 
  </form>
</body>
</html>




