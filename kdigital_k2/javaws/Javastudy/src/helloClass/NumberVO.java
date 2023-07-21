package helloClass;

public class NumberVO {
	private int n1,n2;
	
	public NumberVO() {
		
	}

	public NumberVO(int n1, int n2) {
		super();
		this.n1 = n1;
		this.n2 = n2;
		
	}

	@Override
	public String toString() {
		return "NumberVO [n1=" + n1 + ", n2=" + n2 + "]";
	}

	public int comN1() {
		return n1;
	}

	public void somN1(int n1) {
		this.n1 = n1;
	}

	public int getN2() {
		return n2;
	}

	public void setN2(int n2) {
		this.n2 = n2;
	}



	




	
}
