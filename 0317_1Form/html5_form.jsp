<%-- 
0317_ 
[17] INPUT type="number", "range", "date", "time" 속성, 
       <OPTGROUP>, <BUTTON>, <METER>, <PROGRESS> 태그
 + 
 tip) 하나의 JSP 안에는 2개 이상의 form 태그 선언이 가능. 
 form ~~ form     form ~~~ form
 
 -> Chrome이 표준화되면서 Explore에서 사용하기 어렵던 태그들의 상용화
  
 1. input type='number'
    - 사용법: <input type='number' name='interest' min='0.0' max='20.9' step='0.1' value='15.0'>
    - type='number': 숫자만 입력 가능
    - min: 최소값     /   - max: 최대값
    - step: 값의 변화 단위   /  - value: 초기값
 
 2. input type="range": 입력값의 수직선 UI 지원, 특정 범위의 입력값의 제한
   - size: 속성 작동
 
 3. <METER> : 현재 상태값을 그래프로 출력
     meter와 Progress는 name 속성 undefined : 출력 전용 이기에 
   - 입력을 받을 수 없고 현재 상태만 출력 / MS IE 지원 안함, Windows 10 엣지는 정상 출력
     
 4. <PROGRESS> : 진행 상태값을 그래프로 출력, 입력을 받을 수 없고 현재 상태만 출력
    meter와 Progress는 name 속성 undefined : 출력 전용 이기에 
    예) 다운로드 진행 사항  
 
 5. input type='date'
   - value 속성의 값을 생략하면 현재 날짜가 선택, 날짜 입력 및 출력 지원
   - DBMS 컬럼은 문자열 형태로 저장을 권장: 2020-11-15
   - 기간 SQL: WHERE shopping_begin >= '2020-11-05' AND shopping_end <= '2020-11-15'
 
 6. input type='time'
   - 시간 입력 및 출력 UI 지원
   - value 값에따라 오전오후 자동 변경 value='09:30',  value='15:30'
   - DBMS 컬럼은 문자열 형태로 저장을 권장: 15:30
 
 7. <OPTGROUP>: option 태그의 그룹화 태그
    <label>예약 메뉴:
      <select name="food">
        <optgroup label="김밥류">
          <option value='야채 김밥'>야채 김밥</option>
          <option value='참치 김밥'>참치 김밥</option>
          <option value='김치 김밥'>김치 김밥</option>
        </optgroup>
        
        <optgroup label="면류">
          <option value='라면'>라면</option>
          <option value='짬뽕라면'>짬뽕라면</option>
          <option value='해물라면'>해물라면</option>
        </optgroup>
      </select>
    </label>
 
 8. <BUTTON>: 버튼 기능 지원
   1) submit: 전송, <input type='submit'...
   2) reset: 초기값인 value 속성의 값으로 재설정, <input type='reset'...
   3) button: onclick으로 자바 스크립트를 연결해야 기능이 작동합니다., <input type='button'...
 
 9. 태그 실습           
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 24px;}
</style>
</head>
<body>
<form name='frm' action='./html5_proc.jsp' method='post'>

  1. 이자: <input type="number" name='rest' min='0.0' max='27.9' step='0.1' value='15.0'><br>
  
  2. 입력 범위 지정: 0 <input type='range' name='java' value='50' 
                                min='0' max='100' step='1' style='width: 125px;'> 100<br>
         
 <!--meter와 Progress는 name 속성 undefined : 출력 전용 이기에 -->                               
  3. 현재 온도: <meter id='heat' min='0' max='100' value="65"></meter><br>
  
  4. 다운로드중... <progress max='100' value='30' ></progress><br>
  
  5. 예약:
  <input type="date" name='reser_date' min='2020-11-02'  max='2021-04-30' value="2021-03-17" >
  <input type='time' name='reser_time' value='09:30'><br>  
  
  <label>
      예약 메뉴:
      <select name="food">
        <optgroup label="김밥류"> <!-- Option 태그의 그룹화 -->
          <option value='야채 김밥'>야채 김밥</option>
          <option value='참치 김밥'>참치 김밥</option>
          <option value='김치 김밥'>김치 김밥</option>
        </optgroup>
        <optgroup label="면류">
          <option value='라면'>라면</option>
          <option value='짬뽕라면'>짬뽕라면</option>
          <option value='해물라면'>해물라면</option>
        </optgroup>
        <optgroup label="밥">
          <option value='김치찌개'>김치찌게</option>
          <option value='참치찌개'>참치찌게</option>
          <option value='부대찌개'>부대찌게</option>
        </optgroup>
      </select>
  </label>
  
  <button type='submit'>등록</button>  
  <!--하단에도 등록= 조회버튼이 존재하기에   -> form을 끝내고 새로운 Form 새엇ㅇ-->
  <button type='reset'>다시 입력</button>
  <button type='button' onclick="alert('예약 되었습니다.')">예약</button>
  <br><br>
 </form>
 
 <!--하나의 JSP 안에는 2개 이상의 form 태그 선언이 가능.  -->
 <form name='read' action='./html5_proc2.jsp' method='get'>
  구입 내역 검색:
  시작
  <input type="date" name='shopping_begin' 
              min='2019-11-01'  max='2021-12-31' value="" >
  종료
  <input type="date" name='shopping_end' 
              min='2019-11-01'  max='2021-12-31' value="" >
  <button type='submit'>조회</button>           
</form>
</body>
</html>