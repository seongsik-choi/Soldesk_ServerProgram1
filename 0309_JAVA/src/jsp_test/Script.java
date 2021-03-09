/*
 * 0309_Script.java
   1) JSP도, Java Resources에서 java 파일도 실행 가능
     STS 실행시 missing tools.jar 에러 처리
     ▷ C:\ai8\sts-4.6.0\SpringToolSuite4.ini 변경
     openFile 밑에
     -vm  ◀─ 추가
     C:\jdk1.8.0\bin\javaw.exe  ◀─ 추가
   
   2) .class 파일만 실행하기(cmd 창)
     .class 파일이 있는 dir로 이동 후
     C:\ai8\ws_frame\jsp_test\build\classes>java jsp_test.Script
     -> java jsp_test.Script 
     1) 일반 JAVA의 경우 java 클래스파일 
     2) JSP의 JAVA의 경우 상위 dir에서 패키지명을 먼저 명시후 java 클래스파일
 */
package jsp_test;
public class Script {
  public static void main(String[] args) {
    String name = "투투";
    int kor = 90;
    int eng = 70;
    int mat = 80;
    int tot = kor + eng + mat;
    int avg = tot / 3;
 
    // System.out: 표준 출력 장치, 모니터 콘솔
    System.out.println("--> 성명: " + name);
    // out: web 출력
    System.out.println("WEB");
    System.out.println("성명: " + name);
    System.out.println("국어: " + kor);
    System.out.println("영어: " + eng);
    System.out.println("수학: " + mat);
    System.out.println("총점: " + tot);
    System.out.println("평균: " + avg);
  }
}