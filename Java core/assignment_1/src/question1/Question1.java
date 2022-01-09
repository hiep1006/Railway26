package question1;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Question1 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		boolean isCorrect = true;
		int age = 0;
		
		
		
		while (isCorrect) {
			System.out.print("Nhap vao tuoi: ");
			try {
				age = scanner.nextInt();
				isCorrect = false;
			} catch (InputMismatchException e) {
				System.err.println("Error!");
			} finally {
				scanner.nextLine();
			}
		}
	}

	public static int getMaxValue(int[] numbers) {
		int maxValue = numbers[0];
		for (int i = 1; i < numbers.length; i++) {
			if (numbers[i] > maxValue) {
				maxValue = numbers[i];
			}
		}
		return maxValue;
	}

	public static int getMinValue(int[] numbers) {
		int minValue = numbers[0];
		for (int i = 1; i < numbers.length; i++) {
			if (numbers[i] < minValue) {
				minValue = numbers[i];
			}
		}
		return minValue;
	}
	
}
