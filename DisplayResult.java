/**************************** Program to Display result based on Conditions ************/

public class DisplayResult {
	static void printResult(int n) {
		for (int i = n; i > 0; i--) {
			if ((i % 5 == 0) && (i % 3 == 0))
				System.out.println("Testing");
			else if (i % 5 == 0)
				System.out.println("Agile");
			else if (i % 3 == 0)
				System.out.println("Software");
			else
				System.out.println(i);
		}
	}

	public static void main(String[] args) {
		int n = 100;
		printResult(n);
	}

}
