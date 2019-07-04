package loops;

public class Task5 {
	public static void main(String[] args) {

		for (int i = 1; i <= 3; i++) {
			for (int s = 2; s <= 2; s--) {
				System.out.println(" ");
				{

					for (int j = 1; j <= i; j++) {
						System.out.println(j + " ");
					}
					System.out.println();
				}
			}

		}
	}
}
