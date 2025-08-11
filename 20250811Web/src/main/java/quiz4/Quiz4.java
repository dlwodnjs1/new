package quiz4;

import java.util.HashMap;
import java.util.Map;


public class Quiz4 {

	public static void main(String[] args) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put(new Student("1234", "홍"), 100);
		map.put(new Student("4321", "김"), 90);
		map.put(new Student("1234", "홍1"), 70);
		
		System.out.println(map.get(new Student("1234", "홍")));
	}
}
