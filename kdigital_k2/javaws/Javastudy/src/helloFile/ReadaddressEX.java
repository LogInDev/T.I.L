package helloFile;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class ReadaddressEX {

	public static void main(String[] args) {
		FileReader fr = null;
		BufferedReader br = null;
		String file = "./data/address.csv";
		StringTokenizer st = null;

		FileWriter fw = null;
		String file1 = "./data/address2.txt";
		try {
			fr = new FileReader(file);
			br = new BufferedReader(fr);
			String str = null;
			List<String> aList = new ArrayList<String>();
			while ((str = br.readLine())!=null) {
				aList.add(str);

			}

			//address2파일 만들기
			fw = new FileWriter(file1);

			String []msg = new String[aList.size()];
			for(int i=0;i<aList.size();i++) {
				msg[i] = aList.get(i)+"|\n";
				fw.write(msg[i].replace(",", "|"));
			}


		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				br.close();
				fr.close();
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}


	}

}
