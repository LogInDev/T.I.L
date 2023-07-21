package helloFile;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class ReadAddress {

	public static void main(String[] args) {
		FileInputStream fi = null;
		InputStreamReader isr = null;
		BufferedReader bfr = null; 
		//데이터 분리 방법(StringTokenizer)
		StringTokenizer st = null; //token은 더이상 쪼갤 수 없는 단위
		
		String file = "./data/address.csv"; 
		try {
			fi = new FileInputStream(file); 
			isr = new InputStreamReader(fi);
			bfr = new BufferedReader(isr);
			String str = null;
			//데이터 저장
			List<String> aList = new ArrayList<String>(); //10개 넣을 수 있는 리스트 생성
			while ((str = bfr.readLine())!=null) {// 읽을 게 없으면 null값 리턴
				aList.add(str);
			}
			//데이터 분리 작업
			for(String s:aList) {
//				System.out.println(s.split(","));
				st = new StringTokenizer(s,",");//기본 분리 기준은 공백
//				while (st.hasMoreTokens()) {    //다음 토큰이 있다면 true
//					String t = st.nextToken();     //다음 토큰 가져오기
//					System.out.println(t);
					System.out.printf("(%s,%s,%s,%s)\n", st.nextToken(), st.nextToken(), st.nextToken(), st.nextToken());
//				}
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
