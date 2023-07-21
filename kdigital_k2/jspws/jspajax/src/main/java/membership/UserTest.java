package membership;

public class UserTest {

	public static void main(String[] args) {
		String name = "hong";
		int age=11;
		String email = "email";
		UserDTO user = new UserDTO(name, age, email);
		UserDTO user2 = UserDTO.builder()
						.name(name)
						.age(age)
						.email(email)
						.build();
		System.out.println(user);
		System.out.println(user2);
		System.out.println(user2.getAge());
		System.out.println(user2.getEmail());
		System.out.println(user2.getName());
//		UserDTO user = new UserDTO()
//		user.setName("hong");
//		user.setAge(0);
//		user.setEmail("email");
//		System.out.println(user);
//		System.out.println(user.getEmail());
	}

}
