package helloInheritance;

public class Game {
	void display(GraphicCard gc) {
		gc.process();
	}
	void display(GraphicCard[] gc) {
		for(GraphicCard a:gc) a.process();
	}
}
