package helloFile;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

public class BufferedReadTest {

	public static void main(String[] args) {
		//옛날버전을 리더버전으로 바꿔서 버퍼드 리더 사용하기
		FileInputStream fi = null;
		InputStreamReader isr = null;
		BufferedReader bfr = null; //readLine을 넣을 곳(Reader의 하위버전)
		String file = "./data/sample.txt"; 
		//한줄 씩 읽기 위한 과정
		try {
			fi = new FileInputStream(file); //통로 뚫기 - 1byte씩 읽기가능
			isr = new InputStreamReader(fi);//byte -> Reader객체화
			bfr = new BufferedReader(isr);
			String str = null;
			while ((str = bfr.readLine())!=null) {// 읽을 게 없으면 null값 리턴
				System.out.println(str);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {                   //열린 역순으로 닫아주기
			try {
				bfr.close();
				isr.close();
				fi.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
