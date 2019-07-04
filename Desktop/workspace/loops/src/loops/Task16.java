package loops;

public class Task16 {
	public static void main(String[] args) {
		
		//deklarirati niz od 6 brojeva
		
		int [] numbers= {1,2,3,4,5,6};
		
		//zbrojite sve èlanove niza
		
		int sum=0;
		
		for(int x :numbers) {
			sum=sum+x;
		}
		System.out.println(sum);
	}

}
