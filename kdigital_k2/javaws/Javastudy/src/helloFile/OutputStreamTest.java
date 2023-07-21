package helloFile;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

public class OutputStreamTest {

	public static void main(String[] args) {
		FileOutputStream fos = null; //FileOutputStream - byte단위로 처리함.
		
		String msg = "test1\ntest2\ntest3";
		//1byte씩 출력해서 byte로 변환
		byte[] byteArray = msg.getBytes();
//		for(byte b: byteArray) {
//			System.out.print((char)b);
//		}
		String file = "./data/test2.txt"; //해당 폴더에 파일이 없으면 만들어줌.
		try {
			fos = new FileOutputStream(file);
			fos.write(byteArray);
		} catch (Exception e) {  //폴더가 없을 경우에 예외발생
			e.printStackTrace();
		}finally {
			try {
				fos.close();   //열린 애들은 닫아줘야함.
			} catch (IOException e) {  //열린애들이 없을 경우 예외발생
				e.printStackTrace();
			}  
		}
	}

}
