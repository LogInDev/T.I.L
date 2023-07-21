package helloGui;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;

public class SwingEx2 extends JFrame implements ActionListener {
	//글자가 어느 위치에 있는지 알기 위해
	int index =0;
	//그 때 그 글자를 문자열배열로 만들 걸
	String[] msgs = {"첫번째 문장", "두번째 문장", "3번째 문장"};
	JButton button1 = new JButton("<<");
	JButton button2 = new JButton(">>");
	JButton button3 = new JButton(msgs[0]);
	
	public SwingEx2() {
		BorderLayout layout = new BorderLayout();
		setLayout(layout);
		//내 자신이 갖고 있는 Override로 구현할 예정 - this
		button1.addActionListener(this);
		button2.addActionListener(this);
		button3.setEnabled(false);//버튼처럼 쓰여질꺼니?(클릭이 되어질껀지)false - 놉
		add(button1,BorderLayout.WEST);
		add(button2,BorderLayout.EAST);
		add(button3,BorderLayout.CENTER);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setSize(300,100);
		setVisible(true);
	}
	
	
	public static void main(String[] args) {
		SwingEx2 app = new SwingEx2();
		
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		Object obj = e.getSource();//어떤 버튼이 눌렸는지 가져올때 사용하는 메소드
		if(obj == button1) {
			index--;
		}else if(obj == button2) {
			index++;
		}
		if(index>2) {
			index=0;
		}else if(index<0) {
			index=2;
		}
		//버튼 찍어주기
		button3.setText(msgs[index]);
	}
}
