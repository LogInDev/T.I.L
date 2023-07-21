package helloGui;

import java.awt.FlowLayout;

import javax.swing.JFrame;
import javax.swing.JLabel;

//판 상속 받아서 창 만들기
public class SwingEx1 extends JFrame{
	public SwingEx1() {
		super("Hello World!!");
		//container : 격리의 개념(판 안에 또다른 판, 가상환경)
		//getContentPan() = 그 때 만들어진 판에 원본,this랑비슷
		getContentPane().setLayout(new FlowLayout());
		JLabel label = new JLabel("Welcome to Swing@");
		//label판에 붙여주기
		getContentPane().add(label);
		setDefaultCloseOperation(EXIT_ON_CLOSE);//나가고 닫아라 - 3
		setSize(500,500);
		setVisible(true);
		
	}
	public static void main(String[] args) {
		
		SwingEx1 app =  new SwingEx1();
	}

}
