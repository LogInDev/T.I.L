package hello;

import java.util.Arrays;

public class ArrayCopy {

	public static void main(String[] args) {
		int[] arr1 = {1, 2, 3, 4, 5};
		int[] arr2 = new int[10];
		for(int i =0;i<arr1.length;i++) {
			arr2[i] = arr1[i];
		}
		
//		arr1 = arr2;
		
		System.out.println(Arrays.toString(arr1));
		System.out.println(Arrays.toString(arr2));
	
		
		System.out.println(arr1);//[I@15db9742
		System.out.println(arr2);//[I@6d06d69c
		int[] arr3 = new int[10];
		System.arraycopy(arr2, 0, arr3, 0, arr1.length);
		System.out.println(Arrays.toString(arr3));
		arr2 = arr3;
		System.out.println(arr2);//[I@7852e922
		System.out.println(arr3);//[I@7852e922
		int[] arr4=null;
		arr4 = Arrays.copyOf(arr1, arr1.length+5);
		arr1 = arr4;
		System.out.println(Arrays.toString(arr1));
		System.out.println(Arrays.toString(arr4));
		System.out.println(arr1);
		System.out.println(arr4);//[I@4e25154f
		

	}

}
