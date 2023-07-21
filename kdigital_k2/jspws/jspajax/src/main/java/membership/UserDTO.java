package membership;

import lombok.Builder;
import lombok.Data;

@Data
@Builder //기본 생성자가 없음
public class UserDTO {
	private String name;
	private int age;
	private String email;
	
}
