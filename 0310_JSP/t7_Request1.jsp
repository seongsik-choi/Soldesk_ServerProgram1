<%-- 
0310_[02] JSP 내부 객체의 이해 
  Q) 개발자가 객체를 생성하지 않아도 jsp 페이지가
       서블릿 컨테이너(Tomcat)로 로딩되면 Tomcat등 서버가 자동으로 생성하는 객체
  A) 개발자는 반복적인 작업을 줄이고 필요한 작업 가능
  ex) out.print 같은 out내부 객체를 사용
 
  Q) jsp페이지는 Web서버 및 Servlet Container라고 하는 복잡한 server 환경에서 실행이 되기 때문에, 
     실행중에 여러가지 상태정보를 가지고 있어야 하는데 이런 경우에 사용되는 객체들이 내부 객체들
   A) Web서버: HTML, CSS, JS, Image 등을 Browser로 전송 ex) Apache HTTP server등
   A) Servlet Container: JSP를 JAVA로 변환하고 컴파일 및 실행하여 HTML, CSS, JS등을 만드는 서버고,
       대부분의 Servlet Container들은 Web Server 의 기능도 가짐
       예) Tomcat, Resin, JBoss, JEUS등
 
   - 내부 객체로 인해 개발자는 좀더 쉽게 JSP 프로그래밍이 가능함. 
 
1. request 내부 객체 
   - javax.servlet 
     Interface ServletRequest
       extended by javax.servlet.http.HttpServletRequest Interface를 Tomcat등 
        서버가 구현한 객체, 자동화된 객체, 개발자는 사용.

   - <FORM> 태그에 입력된 데이터를 읽어오는 역활을 함. 

   - <FORM>에서 입력되어 브러우저(크롬)가 전송한 데이터를 Tomcat 서버의
      JSP에서 처리할수 있도록 객체로 가져오는 역할, 접속한 클라이언트에 대한 정보도 알 수 있음
 
    ☆ URL 상에 직접 값을 명시한 경우
     . http://localhost:9090/jsp_test/request.jsp?code=1&city=seoul
     . ?: 보내는 값을 명시한다는 뜻(파라미터의 시작)
     . &: 접속자가 보내는 값이 2개 이상인 경우 분리 기호 
 
   - request.getParameter("code"): URL 또는 <FORM> 태그에서 
      서버로 전송된 값을 문자열로 가져옴, 폼 태그에서 숫자를 전달해도 문자열 형태로 읽음

   - 값을 전달하지 않은 상태에서 변수의 값을 읽어오면 'null'이 전달
     예) out.println(request.getParameter("index")); --> null

   - 기상청의 GET 방식 데이터 전송
     http://www.kma.go.kr/weather/forecast/digital_forecast.jsp?x=60&y=127
     
2. request 객체 실습
 문) index, filename 값을 전달받아서 해당하는 이미지를 출력하는 코드를 작성
 이미지가 없는 경우 메시지 출력: 번호에 해당하는 이미지가 없습니다.(가능번호: 1 ~10) 
 - request 객체의 getParameter() Method : 사용자가 입력한 데이터를 가져옴 
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
<% // Scriptlet
 String[] files = new String[10];
 
 files[0] = "./images/tu01.jpg";
 files[1] = "./images/tu02.jpg";
 files[2] = "./images/tu03.jpg";
 files[3] = "./images/tu04.jpg";
 files[4] = "./images/tu05.jpg";
 files[5] = "./images/tu06.jpg";
 files[6] = "./images/tu07.jpg";
 files[7] = "./images/tu08.jpg";
 files[8] = "./images/tu09.jpg";
 files[9] = "./images/tu10.jpg";
 
/* request 객체의 getParameter() Method : 사용자가 입력한 데이터를 가져옴 
  int index = Integer.parseInt("index"); // 형변환 필요
  parseInt 정적메소드 사용. 
  getParameter는 항상 String 형태로 반환(return type : String)
 */
 int index = Integer.parseInt(request.getParameter("index"));
 // int형 index변수에 <- 사용자기 입력한 값을  데이터를 읽어옴(String 형의 getParmeter를 형변환)
 
 // System.out.println("index : " +index); 
 // error. java.lang.NumberFormatException: null  : 숫자 입력을 못받음
 // 숫자를 요청받겠다고 했는데 숫자를 전달받지 못한 경우
 
 // url 뒤 : ?: 보내는 값을 명시한다는 뜻(파라미터의 시작) 입력 후 index=num
 // http://localhost:9090/jsp_test/core/t7_Request1.jsp?index=3 : Console로 찍어줌
 
 %>
  <%-- Q) ?index=1 request 해도 실제 tu01.jpg가 나오지 않음 
          A) Scriptlet 안 index-1 해줘야 실제 배열값과 동일
           
          Q) ?index=3000 입력시 JAVA코드 노출(취약점)
          A) if~else 문을 사용해 존재하지않은 index의 노출을 else문으로 받음
          
          실행 : index와 filename을 직접 입력하여 출력하기
              localhost..?index=3&filename=tu03.jpg
   --%>
  index : <%=index %><br>  <%-- 입력한 이미지 + Enter --%>
 <%
 if(index >=1 && index <=10){
%>
  <IMG src = "<%=files[index-1]%>" style=' width:600px; height:350px;'> <BR>
  <%
 }//if end
 else{
  %>
  해당하는 이미지가 존재하지 않습니다. <BR>
  <%
 }// else end

 // filename을 직접 입력하여 출력하기.
 String filename  = request.getParameter("filename");
 %>
  filename : <%= filename %> <br> <%-- Filename 출력 후 + enter --%>
  <IMG src = './images/<%=filename %>' style=' width:600px; height:350px;'>
 
</body>
</html>