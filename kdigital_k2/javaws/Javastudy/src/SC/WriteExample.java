package SC;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class WriteExample {

	public static void main(String[] args) {
	
		try(Writer writer = new FileWriter("C:/kdigital/java/test3.txt")) {
						
			char a = 'A';
			writer.write(a);
			
			char b = 'B';
			writer.write(b);
			
			char[] arr = {'C', 'D','E'};
			writer.write(arr);
			
			writer.write("FGH");
			
			writer.flush();
			System.out.println("저장 성공");
		} catch (IOException e) {
			
			e.printStackTrace();
		} 
			
		
		
	}

}
