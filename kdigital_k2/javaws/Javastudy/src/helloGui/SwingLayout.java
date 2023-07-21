package helloGui;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.FlowLayout;
import java.awt.GridBagLayout;
import java.awt.Panel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;

public class SwingLayout extends JFrame {
	
	JButton button1 = new JButton("button1");
	JButton button2 = new JButton("button2");
	JButton button3 = new JButton("button3");
	JButton button4 = new JButton("button4");
	JButton button5 = new JButton("button5");
	
	//Container 하위에 Panel
	Panel p1 = new Panel();
	Panel p2 = new Panel();
	
	//각 레이아웃의 역할 보기 쉽게 메소드 정의 - 레이아웃 모양 보기
	public void flowLayout() {
		p1.setLayout(new FlowLayout());
		p1.add(button1);
		p1.add(button2);
		p1.add(button3);
		p1.add(button4);
		
	}
	public void gridLayout() {
		p1.setLayout(new GridBagLayout());
		p1.add(button1);
		p1.add(button2);
		p1.add(button3);
		p1.add(button4);
		p1.add(button5);
				
	}
	public void borderLayout() {
		p1.setLayout(new BorderLayout());
		//버튼 방향 정해주기
		p1.add(button1, BorderLayout.NORTH);
		p1.add(button2, BorderLayout.WEST);
		p1.add(button3, BorderLayout.EAST);
		p1.add(button4, BorderLayout.SOUTH);
		p1.add(button5, BorderLayout.CENTER);
	}
	public void cardLayout(){
		final CardLayout card =  new CardLayout();
		setLayout(card);
		p1.add(button1);
		p1.add(button2);
		p1.add(button3);
		p2.add(button4);
		p2.add(button5);
		add("p1",p1);
		add("p2",p2);
	
		//버튼 이벤트 실행시 확인하고 할일
		button3.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				card.show(getContentPane(), "p2");
			}
		});
		
		button5.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				card.show(getContentPane(), "p1");
				
			}
		});
	}
	public SwingLayout() {
		super("Layout Showcase");
		getContentPane().add(p1);
//		flowLayout();
//		gridLayout();
//		borderLayout();
		cardLayout();
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setSize(300, 300);
		setVisible(true);
		
	}
	public static void main(String[] args) {
		SwingLayout app = new SwingLayout();
	}

}
