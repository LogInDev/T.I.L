package helloMemberdao;

import java.util.Scanner;

public class MemberService {
	void process(Action action, Scanner sc) {
		action.execute(sc);
	}
}
