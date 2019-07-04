package loops;

import javax.swing.JOptionPane;

public class Task9 {
	public static void main(String[] args) {
		//Write a program to find the factorial value of any number entered through the keyboard. 
		
		int Number=Integer.parseInt(JOptionPane.showInputDialog("Enter the number: "));
	   int fact=1;
	   
	   for(int i=1;i<=Number;i++) {
		   fact*=i;
	   }
	   System.out.println("Factorial is: " + fact);
		
		}
	}


