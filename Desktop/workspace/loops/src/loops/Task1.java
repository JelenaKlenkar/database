package loops;

public class Task1 {
	
	public static void main(String[] args) {
		
		int k=1;int t=2;
		
		k=t++;
		t+=++k-t++;
		t++;k--;
		k=t++ - --k;
		System.out.println(k-- + "-" + --t);
		
	}

}
