/**************************** Program to Display result based on Conditions ************/
import java.util.Scanner;
public class DisplayResult1 {
	static void printResult(int n, int a, int b) {
		for (int i = n; i > 0; i--) {
			if ((i % b == 0) && (i % a == 0))
				System.out.println("Testing");
			else if (i % b == 0)
				System.out.println("Agile");
			else if (i % a == 0)
				System.out.println("Software");
			else
				System.out.println(i);
		}
	}

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the maximum number: ");
		int max = sc.nextInt();
		System.out.println("Enter first multiple ");
		int firstMultiple = sc.nextInt();
		System.out.println("Enter second multiple ");
		int secondMultiple = sc.nextInt();
		printResult(max, firstMultiple, secondMultiple);
	}

}
