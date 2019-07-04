package loops;

import javax.swing.JOptionPane;

public class Task10 {
	// Program nakon unosa broja izmeğu 20 i 150
	// upisani broj ispisuje

	public static void main(String[] args) {

		int Number;
		
		while (true) {

			Number = Integer.parseInt(JOptionPane.showInputDialog("Input number: "));

			if (Number >= 20 && Number <= 150) {
				break;
			}

			JOptionPane.showConfirmDialog(null, "Number not in span.");

		}
		System.out.println(Number);
	}
}
