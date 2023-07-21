package helloGui;

import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.Label;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

public class AWTEx1 {

	public static void main(String[] args) {
		//Frame : 독립창 만들기
		Frame f = new Frame("Hello World!!");
		f.setLayout(new FlowLayout());// FlowLayout :  default값
		Label label = new Label("Welcome to AWT");
		f.add(label);
		f.setSize(500, 500);//창 크기 지정 - pixel단위 -> 해상도 
		f.setVisible(true);//창이 보이도록 - true | 창이 안보이도록 - false
		//창에 X를 눌러도 창이 닫히지 않음 - AWT는 X버튼도 구현하도록 설정되어 있음.
		//X버튼 이벤트 핸들러 만들기
		WindowListener l = new WindowCloseHandler();
		f.addWindowListener(l);;//
		
	}

}
//인터페이스인 WindowListener를 구현한 WindowAdapter를 상속해서
//(WindowListener 자체를 구현하면 이벤트 발생시 우리가 필요한 '창 닫기'만 오버라이딩하면 되는데 
//불필요한 부분까지 오버라이딩 해야해서  낭비되어 상속을 통해 파라미터 값을 입력)
//addWindowListener의 파라미터로 사용가능한 클래스로 만듦.
class WindowCloseHandler extends WindowAdapter{
	@Override
	public void windowClosing(WindowEvent e) {
		System.exit(0); //프로그램 닫기
	}
}