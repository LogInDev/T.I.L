package helloAnimal;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class UpdateAction implements Action{

	@Override
	public void execute(Scanner sc) {
		FileReader fr = null;
		BufferedReader br = null;
		String file = "./data/Animal.txt";
		List<String> sData = new ArrayList<String>();
		try {
			fr = new FileReader(file);
			br = new BufferedReader(fr);
			String str = null;
			while ((str=br.readLine())!=null) {
				sData.add(str);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				fr.close();
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		//List<String> sData -> List<AnimalVO> animals
		List<AnimalVO> animals = new ArrayList<AnimalVO>();
		AnimalVO animal = null;
		for(String s: sData) {
			String[] dArr = s.split(",");
			animal = new AnimalVO(dArr[0],dArr[1],Integer.parseInt(dArr[2]),dArr[3]);
			animals.add(animal);
		}

		//수정할 동물 이름 찾기
		System.out.println("수정할 동물 이름 : ");
		String name = sc.next();
		AnimalVO ani = null;
		for(AnimalVO a: animals) {
			if(a.getName().equals(name)) {
				ani = a;
				break;
			}
		}
		if(ani!=null) {
			System.out.println("기존 동물의 종 : " + ani.getKind());
			System.out.println("수정될 동물의 종 : ");
			String kind = sc.next();
			System.out.println("기존 동물의 나이 : "+ani.getAge());
			System.out.println("수정될 동물의 나이 : ");
			int age = sc.nextInt();
			System.out.println("기존 동물의 울음소리 : "+ ani.getSound());
			System.out.println("수정될 동물의 울음소리 : ");
			String sound = sc.next();
			ani.setKind(kind);
			ani.setName(name);
			ani.setAge(age);
			ani.setSound(sound);
		}else {
			System.out.println("일치하는 동물이 없습니다.");
		}

		FileWriter fw = null;
		try {
			fw = new FileWriter(file);
			for(AnimalVO a: animals) {
				fw.write(a.toString()+"\n");
			}
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
