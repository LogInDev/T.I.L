package helloFile;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class ObjectFileTest {

	public static void main(String[] args) {
		User user1 = new User("hong", "1111", "홍길동", 20);
		//파일을 쓰기위한 클래스
		FileOutputStream fos = null;
		//파일을 쓰기위한 fos를 밖으로 내보내는 것(통로를 장착하는 어댑터같은 기능)
		ObjectOutputStream oos =null;
		
		//파일을 읽어들이는 것 
		FileInputStream fis = null;
		ObjectInputStream ois = null;
		//만들어진 파일은 열 수는 있지만 깨져서 확장자는 중요하지 않음(2진파일이라)
		String file = "./data/userInof.ser";
		try {
			//Write
			fos = new FileOutputStream(file);
			oos = new ObjectOutputStream(fos);
			oos.writeObject(user1);
			
			//Read
			fis = new FileInputStream(file);
			ois = new ObjectInputStream(fis);
			User u = (User)ois.readObject();
			//객체로 만든 파일을 잘 읽어드림.
			System.out.println(u.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				//열린 순서 역순으로 닫아줌.
				oos.close();
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
