package helloFile;

import java.io.FileWriter;
import java.io.IOException;

public class FileWriterTest {

	public static void main(String[] args) {
		FileWriter fw = null;
//		String msg = "test1\ntest2\ntest3";
		//문자 배열로 데이터 입력
		String[] msg = {"test11\n","test22\n","test33\n"};
		String file = "./data/test3.txt";
		try {
			fw = new FileWriter(file, true);   //통로 뚫어 주기
//			fw.write(msg);
			//문자열로 데이터 입력
			for(String s:msg) {
				fw.write(s);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
