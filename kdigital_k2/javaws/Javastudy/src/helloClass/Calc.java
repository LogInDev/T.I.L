package helloClass;

public class Calc {
	int sum(int n1, int n2) {
		return n1+n2;
	}
	int sum(int []n) {
		int rs =0;
		for(int a:n) {
			System.out.println(a);
			rs+= a;
		}
		return rs;
	}
	
	int plus(NumberVO num) {
		int result = num.comN1()+ num.getN2();
		return result;
	}
	int plus(NumberVO[] num) {
		int rs =0;
		for(NumberVO vo:num) {
			System.out.println(vo);
			rs+= vo.comN1();
		}
		return rs;
	}
	
}
