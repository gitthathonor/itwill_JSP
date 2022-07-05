package com.itwill.test;

public class Student {
	private String name;
	private int age;
	private int kScore;
	private int mScore;
	private int eScore;
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getkScore() {
		return kScore;
	}

	public void setkScore(int kScore) {
		this.kScore = kScore;
	}

	public int getmScore() {
		return mScore;
	}

	public void setmScore(int mScore) {
		this.mScore = mScore;
	}

	public int geteScore() {
		return eScore;
	}

	public void seteScore(int eScore) {
		this.eScore = eScore;
	}
	
	@Override
	public String toString() {
		return "Student [name=" + name + ", age=" + age + ", kScore=" + kScore + ", mScore=" + mScore + ", eScore="
				+ eScore + "]";
	}

	public static void sum(Student s) {
		System.out.println("총점(객체) : " + (s.getkScore()+s.getmScore()+s.geteScore()));
	}
	
	
}
