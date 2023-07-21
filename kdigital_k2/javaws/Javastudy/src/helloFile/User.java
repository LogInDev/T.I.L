package helloFile;

import java.io.Serializable;

public class User implements Serializable{
	
	private String id;
	private String pw;
	//name의 정보는 보호 해야할 때(보내주는 정보에 포함시키면 안될때 사용(메모리에서 제거) - null로 출력
	private transient String name;
	private int age;
	
	public User() {
	}
	
	public User(String id, String pw, String name, int age) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", pw=" + pw + ", name=" + name + ", age=" + age + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	
	
	
	
}
