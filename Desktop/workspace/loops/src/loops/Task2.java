package loops;

public class Task2 {
 public static void main(String[] args) {
	
	 
	 int k=3,t=1;
	 
	 t=k--;
	 k-=t++ + --k;
	 t++;k--;
	 t=k++ - --t;
	 
	 System.out.println(--t + "," + k--);
}
}
