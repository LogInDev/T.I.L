package SC;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;

public class CharacterConvertStreamExample {

	public static void main(String[] args) {
		try {
	
			String str = "문자 변환 스트림을 사용합니다.";
			
			write(str);;
			
		
		
			
			String str2 = read();
			
			
			System.out.println(str2);
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void write(String str) throws IOException{
		OutputStream os = new FileOutputStream("C:/kdigital/java/test.txt");
		Writer writer = new OutputStreamWriter(os,"UTF-8");
	
		
		writer.write(str);;
		
		writer.flush();
		writer.close();
	}
	public static String read() throws IOException{
//		InputStream is = new FileInputStream("C:/kdigital/java/test.txt");
//		Reader reader = new InputStreamReader(is, "UTF-8");
//		char[] data = new char[20];
//		int num = reader.read(data);
//		reader.close();
//		String str2 = new String(data,0,num);
//		return str2;
		
		InputStream is = new FileInputStream("C:/kdigital/java/test.txt");
		Reader reader = new InputStreamReader(is, "UTF-8");
		BufferedReader br = new BufferedReader(reader);
		String str2 = br.readLine();
		return str2;
	}

}
