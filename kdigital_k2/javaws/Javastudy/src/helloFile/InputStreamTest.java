package helloFile;

import java.io.IOException;

public class InputStreamTest {

	public static void main(String[] args) {
		int var_byte = -1;
		char a = 4;
		System.out.println(String.valueOf(a));
		
		System.out.println("문자입력>");
		do {
			try {
				var_byte = System.in.read();
			} catch (IOException e) {
				e.printStackTrace();
			}
			if(var_byte ==10||var_byte == 13) {
				break;
			}else {
				System.out.printf("code : %s ->char: %c\n",var_byte,var_byte);
			}
		}while(true);
		System.out.println("END");
		
	}

}
