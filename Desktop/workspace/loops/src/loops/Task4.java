package loops;

import java.util.Arrays;

import javax.swing.JOptionPane;

public class Task4 {
	public static void main(String[] args) {
		//Program unosi 2 cijela broja koja stavlja u niz
		
		int i=Integer.parseInt(JOptionPane.showInputDialog("a"));
		int j=Integer.parseInt(JOptionPane.showInputDialog("b"));
		
		int niz[]= {i,j};
		System.out.println(Arrays.toString(niz));
	}

}
