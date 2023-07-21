package helloFile;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class FileReaderTest {

	public static void main(String[] args) {
//		FileInputStream fi = null;
//		InputStreamReader isr = null;
		//위의 두줄을 한줄로 합침
		FileReader fr = null;
		BufferedReader bfr = null; 
		String file = "./data/sample.txt"; 
		try {
//			fi = new FileInputStream(file); 
			fr = new FileReader(file); 
//			isr = new InputStreamReader(fi);
			bfr = new BufferedReader(fr);
			String str = null;
			while ((str = bfr.readLine())!=null) {
				System.out.println(str);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {                   
			try {
				bfr.close();
				fr.close();
//				fi.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
