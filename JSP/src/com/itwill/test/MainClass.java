//회사에서 사용하는 패키지명은 회사의 도메인 주소를 사용
//www.itwill.com
//itwill.com
//com.itwill.(패키지명)
//=>(회사도메인).(패키지명).(객체) 
package com.itwill.test;

public class MainClass {

	public static void main(String[] args) {
		
		// 학생 1명의 이름, 국, 영, 수 점수를 만들어서 
		// 학생의 총점, 평균을 출력
		int koreanScore = 88;
		int mathScore = 90;
		int engScore = 97;
		int sum = koreanScore + mathScore + engScore;
		double avg = sum/3;
		
		System.out.println("총점은 : " + sum);
		System.out.println("평균은 : " + avg);
		
		Student stu01 = new Student();
		stu01.setName("홍길동");
		stu01.setAge(20);
		stu01.seteScore(80);
		stu01.setkScore(95);
		stu01.setmScore(88);
		
		System.out.println(stu01.toString());
		
		System.out.println("---------------");
		Student.sum(stu01);
		
		
		//학생 객체 하나 생성, 개산기 색체를 사용해서 학생의 총점, 평균 출력
		Student s1 = new Student();
		s1.setName("이순신");
		s1.seteScore(80);
		s1.setkScore(90);
		s1.setmScore(99);
		
		Cal c = new Cal();
		c.cal_sum(s1);
		
		
		
}
		//학생의 총점()
		static int sumScore(int koreanScore, int mathScore, int engScore) {
			int a = koreanScore + mathScore + engScore;
			return a;
		}
		
		//학생의 평균()
//		static double avgScore(int koreanScore, int mathScore, int engScore) {
//			double b = (koreanScore+mathScore+engScore)/3;
//			return b;
//		}
		
		//학생의 평균() 
		static void avgScore() {
			System.out.println(MainClass.sumScore(88, 90, 97)/3.0);
		}
		
	
		//학생정보를 저장하는 객체 생성
		//이름, 국, 영, 수

		//과제 : 학생 객체를 생성해서 - 기존의 정보를 저장
		//Student stu01 = new Student();
		//stu01.name = "홍길동";
//		stu01.setName("홍길동");
//		stu01.seteScore(80);
//		stu01.setkScore(70);
//		stu01.setmScore(88);



		//객체 생성이 필요없는 매서드 sum()을 사용해서 총점 출력

		
//		System.out.println("-------------");
//		sum(stu01);

}

