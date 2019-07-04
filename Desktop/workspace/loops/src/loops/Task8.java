package loops;

import javax.swing.JOptionPane;

public class Task8 {
	public static void main(String[] args) {
		//Write a program that prompts the user to input a positive integer. It should then print the multiplication table of that number. 
		
		int Number=Integer.parseInt(JOptionPane.showInputDialog("Input positive integer: "));
		
		for(int i=0; i<=10;i++) {
			for(int j=0;j<=10;j++) {
				System.out.print (i*j + " ");
			}
			System.out.println();
		}
	}

}
