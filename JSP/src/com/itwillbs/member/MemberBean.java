package com.itwillbs.member;

import java.util.Date;

// 회원정보를 저장하는 클래스
public class MemberBean {
	// 멤버변수 선언(회원정보) - DB테이블의 컬럼명과 동일한 이름을 사용
	
	private String id;
	private String pass;
	private String name;
	private String gender;
	private int age;
	private String email;
	private Date reg_date;
	
	//public MemberBean() {	}
	
	// alt shift s + r
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
	// alt shift s + s
	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", pass=" + pass + ", name=" + name + ", gender=" + gender + ", age=" + age
				+ ", email=" + email + ", reg_date=" + reg_date + "]";
	}
	
	
	
	

}
