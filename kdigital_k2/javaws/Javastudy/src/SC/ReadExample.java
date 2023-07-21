package SC;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class ReadExample {

	public static void main(String[] args) {
		try(Reader reader = new FileReader("C:/kdigital/java/test3.txt")) {
			while(true) {
				int data = reader.read();
				if(data ==-1) break;
				System.out.println((char)data);
			
			}
			reader.close();
			System.out.println();
			
			Reader reader1 = new FileReader("C:/kdigital/java/test3.txt");
			char[] data = new char[100];
			while(true) {
				int num = reader1.read(data);
				if(num==-1) break;
				for(int i=0;i<num;i++) {
					System.out.println(data[i]);
				}
			}
			reader1.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} 

	}

}
