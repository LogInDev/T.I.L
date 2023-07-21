package helloAnimaldb;

import java.util.Scanner;

public class AnimalService {
	void process(Action action, Scanner sc) {
		action.execute(sc);
	}
}
