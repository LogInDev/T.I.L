package helloClass;

import java.util.Scanner;

import hello.Color;

public class CalcTest {

	public static void main(String[] args) {
		Color col = new Color();

		int k =0;
		k=5;
		
		
		Calc calc = new Calc();
		calc.sum(0, 0);
		NumberVO num = new NumberVO(0, 0);
		num.somN1(4);
		System.out.println(num.comN1());
		System.out.println(num.getN2());
		int sum = num.comN1() + num.getN2();
		
		int[] iArr = {1,2,3,4,5};
		calc.sum(iArr);
	}

}
