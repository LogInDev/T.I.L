package hello;

public class IfEx {

	public static void main(String[] args) {

		//		int score = 80;
		//		
		//		System.out.println("시험 시작");
		//		if(score >= 70) {
		//			System.out.println("당신의 점수는 " + score + "점입니다.");
		//			System.out.printf("당신의 점수는 %s점입니다.", score);
		//		} else {
		//			System.out.println("불합격입니다.");
		//		}
		//		
		//
		//		System.out.println("시험 끝");

//		int score = 80;
//		String grade = "";
//
//		System.out.println("학점부여 시작");
//		if(score >= 95) {
//			grade = "A+";
//		} else if(score >= 90) {
//			grade = "A";
//		} else if(score >= 85) {
//			grade = "B+";
//		}else if(score >= 80) {
//			grade = "B";
//		}else if(score >= 70) {
//			grade = "C";
//		}else if(score >= 60) {
//			grade = "D";
//		}else  {
//			grade = "F";
//		}
		int score = 80;
		String grade = "";

		System.out.println("학점부여 시작");
		if(score >= 95) {
			grade = "A+";
		}  if(score >= 90) {
			grade = "A";
		}  if(score >= 85) {
			grade = "B+";
		}if(score >= 80) {
			grade = "B";
		} if(score >= 70) {
			grade = "C";
		} if(score >= 60) {
			grade = "D";
		}else  {
			grade = "F";
		}
		System.out.println("당신의 학점은 " + grade + "입니다.");
		System.out.println("학점부여 끝");

	}

}
