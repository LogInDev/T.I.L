package helloAnimal;

public class AnimalVO {
	private String kind;
	private String name;
	private int age;
	private String sound;
	public AnimalVO(String kind, String name, int age, String sound) {
		super();
		this.kind = kind;
		this.name = name;
		this.age = age;
		this.sound = sound;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
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
	public String getSound() {
		return sound;
	}
	public void setSound(String sound) {
		this.sound = sound;
	}
	@Override
	public String toString() {
		return kind + "," + name + "," + age + "," + sound;
	}
	
	
	
	
}
