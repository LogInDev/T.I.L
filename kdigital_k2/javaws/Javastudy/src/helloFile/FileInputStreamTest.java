package helloFile;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileInputStreamTest {

	public static void main(String[] args) {
		FileInputStream fIn = null;
//		String file = "C:/kdigital/java/javaws/Javastudy/test.txt";
		String file = "./data/test.txt";//project folder - . :내자신, 생략 가능
		try {
			fIn = new FileInputStream(file);
		} catch (FileNotFoundException e) { //파일이 없을 경우의 예외발생
			e.printStackTrace();
		}
		int var_read = -1;//읽을 데이터가 없으면 -1 리턴
		try {
			while((var_read = fIn.read())!=-1) { //읽을 데이터가 계속 있다면
				System.out.print(var_read);
				System.out.print((char)var_read);
			}//13 - 리턴|| 10 - 캐리지 
		} catch (IOException e) { 
			e.printStackTrace();
		}
	}

}
