package loops;

import javax.swing.JOptionPane;

public class Task13 {
	// Program unosi dva cijela pozitivna broja
	// ispisuje zbroj
	public static void main(String[] args) {
             int a,b;
		while (true) {

			 a = Integer.parseInt(JOptionPane.showInputDialog("Input number1: "));
			if (a>= 0) {
				break;
			}
			JOptionPane.showConfirmDialog(null, "Not a positive number");
		}
		while (true) {
			 b = Integer.parseInt(JOptionPane.showInputDialog("Input number2: "));
			if (b >= 0) {
				break;
			}
			JOptionPane.showConfirmDialog(null, "Not a positive number");
		}
		System.out.println(a + b);
	}
}