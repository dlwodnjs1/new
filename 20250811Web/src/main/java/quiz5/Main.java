package quiz5;

import java.util.Scanner;
import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		for (int i = 0; i<5; i++) {
			System.out.println((i+1) + "학생 학번>");
			String sno = scan.nextLine();
			System.out.println((i+1) + "학생 이름>");
			String name = scan.nextLine();
			
			// student 객체 생성 후 ArrayList<student>에 넣기
			list.add(new Student(sno, name));
		}

		for (Student stu : list) {
			System.out.println(stu);
		}
	}

}
