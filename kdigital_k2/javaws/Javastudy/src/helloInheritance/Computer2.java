package helloInheritance;

public class Computer2 {

	public static void main(String[] args) {
		Game game = new Game();
		GraphicCard gc = new GraphicCard();
		GraphicCard amd = new Amd();
		GraphicCard nvidia = new Nvidia();
		GraphicCard[] gArr = new GraphicCard[3];
		gArr[0] = gc;
		gArr[1] = amd;
		gArr[2] = nvidia;
		
//		game.display(gc);
//		game.display(amd);
//		game.display(nvidia);
		game.display(gArr);
//		game.display(new Amd());
//		game.display(new Nvidia());
		

	}

}
