package loops;

import javax.swing.JOptionPane;

public class Task15 {
	// program unosi dva cijela broja
	// ispisuje sve parne brojeve izmeðu njih
	public static void main(String[] args) {
		
	
	
	int odkuda=Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj: "));
	int dokuda=Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj: "));
	
	int poc=odkuda<=dokuda ?odkuda :dokuda;
	int kraj=dokuda>=odkuda ?dokuda :odkuda;
	
	for(int i=poc;i<=kraj;i++) {
		if(i%2==1) {
			continue;
		
	}
		
		System.out.println(i);

}
}
}
