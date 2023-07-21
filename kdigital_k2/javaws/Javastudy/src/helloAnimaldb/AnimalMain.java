package helloAnimaldb;

import java.util.Scanner;

public class AnimalMain {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		while(true) {
		System.out.println("==Animal Factory==");
		System.out.println("1. 추가");
		System.out.println("2. 리스트 보기");
		System.out.println("3. 정보 수정");
		System.out.println("4. 정보 삭제");
		System.out.println("5. 정보 검색");
		System.out.println("q. 끝내기");
		
		String command = sc.next();
		Action action = null;
		AnimalService as = new AnimalService();
		switch(command) {
		case "1":
			action = new AddAction();
			as.process(action, sc);
			break;
		case "2":
			action = new ListAction();
			as.process(action, sc);
			break;
		case "3":
			action = new UpdateAction();
			as.process(action, sc);
			break;
		case "4":
			action = new DeleteAction();
			as.process(action, sc);
			break;
		case "5":
			action = new SearchAction();
			as.process(action, sc);
			break;
		}
		if(command.equals("q")) break;
			
		}
	
	}

}
