package ramda;

public class Quiz {
	
	public static void main(String[] args) {
		Factorial fac = (x) -> {return x == 1 ? 1 : x * factorial(x - 1);};
		
		
		
		
		
		GreaterThan gt = new GreaterThan() {
			
			@Override
			public boolean result(int a, int b) {
				return ((a > b) ? true : false);
			}
		};
		
		
		gt = (a, b) -> (a > b) ? true : false; //삼항 연산자 사용


		System.out.println(gt.result(10, 30));
			
			
		int x = 100;
		int y = 30;
		if (x > y) {
			System.out.println("true");
		} else {
			System.out.println("false");
		}
		
		boolean z = ((x > y) ? true : false); //삼항 연산자 사용
		System.out.println(z);
	};
}
