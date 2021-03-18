/*
0318
 2) Beans Test
 */
package beans;
public class SungjukVoTest {
  public static void main(String[] args) {
    SungjukVO vo = new SungjukVO();
    //vo.name = "왕눈이";  // error. private 변수로 선언되어 다른 클래스에서 사용 불가능
    System.out.println();
    
    /* setter와 getter 호출 */
    vo.setName("최성식");
    vo.setJava(100);
    vo.setJsp(100);
    vo.setSpring(50);
    vo.setTot(0);
    vo.setAvg(0);
    
    String name = vo.getName(); 
    int java = vo.getJava();
    int jsp = vo.getJsp();
    int spring = vo.getSpring();
    int tot = vo.getTot();
    int avg = vo.getAvg();
    
    System.out.println("이름 : "+ name + "   java점수 : " + java + "   jsp점수 : " + jsp + 
                               "   spring점수 : " + spring +
                              "   총점 : " + tot + "   평균 : " + avg);
  }
}
