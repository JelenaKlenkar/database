package loops;

public class Task14 {
	
	//stop the loop if i =5
	
	public static void main(String[] args) {
		
		
		
		for(int i=0;i<=10;i++) {
			if(i==5) {
				break;
			}
			if(i==8) {
				continue;
			}
			System.out.println(i);
		}
	}

}
