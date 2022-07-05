package com.itwill.test;

public class Cal {
	//컴파일러 -> 메서드명, 전달인자의 타입, 전달인자의 갯수를 사용해서 메서드 구분
	
	//총점, 평균

	//1. 학생정보를 하나하나 전달하는 메서드
	public void cal_sum(int kScore, int eScore, int mScore) {
		System.out.println("총점(cal):" + (kScore+eScore+mScore));
	}
	public void cal_avg(int kScore, int eScore, int mScore) {
		System.out.println("평균(avg):" + (kScore+eScore+mScore)/3.0);
	}
	
	//2. 학생정보를 객체로 전달하는 메서드
	//=> 메서드 오버로딩
	
	
	public void cal_sum(Student s) {
		System.out.println("총점(cal) : " + (s.getkScore()+s.geteScore()+s.getmScore()));
	}
	
	public void cal_avg(Student s) {
		System.out.println("평균(avg) : " + (s.getkScore()+s.geteScore()+s.getmScore()));
	}
	
	
}
