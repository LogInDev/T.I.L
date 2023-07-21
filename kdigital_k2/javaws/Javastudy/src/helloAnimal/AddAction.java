package helloAnimal;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class AddAction implements Action{

	@Override
	public void execute(Scanner sc) {
		System.out.println("동물의 종>>");
		String kind = sc.next();
		System.out.println("동물의 이름>>");
		String name = sc.next();
		System.out.println("동물의 나이>>");
		String age = sc.next();
		System.out.println("동물의 울음소리>>");
		String sound = sc.next();
		
		System.out.printf("%s,%s,%s,%s\n",kind, name, age,sound);
		FileWriter fw = null;
		String file = "./data/Animal.txt";
		try {
			fw = new FileWriter(file,true);
			AnimalVO animal = new AnimalVO(kind, name,Integer.parseInt(age),sound);
			fw.write(animal.toString()+"\n");
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
