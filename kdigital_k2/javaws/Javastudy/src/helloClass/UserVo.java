package helloClass;

public class UserVo {
	private String id;
	private String pw;
	private String name;
	
	public UserVo() {

	}

	
    //오버로딩
	public UserVo(String id, String pw, String name) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
	}

	//getter/setter
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

	@Override //오버라이드(부모님꺼 다시 만들기,재정의, 잘못된걸 확인해줌)
	public String toString() {
		return "UserVo [id=" + id + ", pw=" + pw + ", name=" + name + "]";
	}
	
	
	
}
