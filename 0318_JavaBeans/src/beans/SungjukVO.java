/*
0318
 [21] JSP Model 1, 빈즈의 사용       
 [01] JSP Model 1, 빈즈의 사용 : 현재 빈즈방식 사용no, but 개념은 알아야
+ JSP화면 디자인과 관련된 구현에만 주로 사용
 1. JSP 모델 1
  1) BROWSER : 접속자(Chrome)
  2) JSP          : 사용자 입출력 처리
  3) JavaBean  : DTO(VO, 레코드 저장), Proc(Manager, 자바 처리 로직),
            DAO(SQL 실행), 데이터 처리
  4) DBMS(Data Sources): MySQL, Oracle...
  5) 일반적인 JSP 실행 흐름
     - 등록: create_form.jsp -> create_proc.jsp -> Beans(Proc) -> Beans(DAO) -> SQL
     - 목록: list.jsp -> Beans(Proc)-> Beans(DAO) -> SQL
     - 수정: update_form.jsp -> update_proc.jsp -> Beans(Proc)-> Beans(DAO) -> SQL 
     - 삭제: delete_form.jsp -> delete_proc.jsp -> Beans(Proc)-> Beans(DAO) -> SQL
 
 2. 장점
   - 신규 개발자로 진입하는 개발자나 개발 경험이 부족한 개발자가 webapp 개발 가능.
     ex) 기본적인 내부 객체 자동 생성, request, response, out, session...
          개발자에게 내부 객체가 지원되어 쉽게 JSP를 만들 수
          스크립틀릿 '<%%>' 과 일부 자바 문법만으로 개발 가능
 
 3. 단점 : 이러한 단점으로 JSP화면 디자인과 관련된 구현에 주로 사용
   - 디자인과 JSP 코드가 결합되어 개발이 불편
   - 자바 코드가 JSP 페이지에 많이 노출되어 보안 문제가 발생
   - VO(DTO) 객체 생성등 데이터 처리 관련 코드를 개발자가 직접 구현해야함으로
      단순 반복 코딩에 개발 시간이 많이 소요
   - 프로젝트의 규모가 커지면 개발자가 표준화되지 않은 방법으로
     자신만의 스타일로, 자신만의 기법으로 사이트 개발이 추진되어 추후 관리시에
     관리상 개발 지연이 발생 
   - 개발자가 데이터처리 관련 로직을 대부분 직접 구현
   - 테이블의 컬럼이 많아지면 개발자의 작업량이 급격히 증가
   - 접속자의 접속시 보안과 인증과 관련된 공통된 로직을 적용하기 어려움(JSP: ssi)
   - 로깅, 트랜잭션, 보안 관련 자바 모듈을 각각의 JSP 페이지가 요청을 받음으로 적용 어려움.
   - 소스 통합이 어려움으로 팀작업 어려움
   - 대규모 분산 서비스를 위한 Cloud 환경 이용이 어려움.

 4. JSP Model 1 기반 웹사이트를 제작하세요.
  STS setting:
  - project type: Dynamic Web Project
   project name: jsp_test
   Dynamic web module version: 3.1 ← 중요
   JAVA: 1.8
 */
package beans;
public class SungjukVO {
  
  // 멤버변수 field
  private String name = "";
  private int java = 0;
  private int jsp = 0;
  private int spring = 0; 
  private int tot = 0; 
  private int avg = 0; 
  
  // Getter와 Setter를 이용한 private 변수 접근
  //우선순위 : 멤버변수 < 지역변수(local)
  // this.name(멤버) = name(지역)
  // Setter 
  
  // 필드, 전역(클래스)변수, Arrtitube
  public void setName(String name) {
    this.name = name;  // SungjukVoTest에서 객체 선언(vo.name)이 이곳으로 호출됨                            
  }   
  public void setJava(int java) { 
    this.java = java;  } 
  
  public void setJsp(int jsp) {
    this.jsp = jsp;  }

  public void setSpring(int spring) {
    this.spring = spring;  }

  public void setTot(int tot) {
    this.tot = tot;  }
  
  public void setAvg(int avg) {
    this.avg = avg;  }
  
  // Getter로 받음
  public String getName() {
    return this.name;  // 메소드 외부에 있는 변수를 의미
    }
  
  public int getJava() {
    return this.java;  }

  public int getJsp() {
    return this.jsp;  }
  
  public int getSpring() {
    return this.spring;  }
  
  public int getTot() {
    tot = (java+jsp+spring);  // 여기서 tot은 멤버변수 field, setter로 호출 시 전송
    return this.tot;  }
  
  public int getAvg() {
    avg = (java+jsp+spring)/3;
    return this.avg;  }
  
  
}


