package test;

import java.util.Map;

public class PropertyEx {

	public static void main(String[] args) {
		Map<String, String> env = System.getenv();
		for(String var : env.keySet()) {
			System.out.println(var + "="+System.getenv(var));

		}
	}

}
