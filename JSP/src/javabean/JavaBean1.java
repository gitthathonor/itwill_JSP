package javabean;

public class JavaBean1 {
	//1. 기본패키지를 제외한 특정 패키지에 있어야함.
	//2. 기본 생성자가 있어야 함
	//3. 멤버변수의 접근지정자는 private
	//4. 멤버변수에 접근가능한 get/set메서드 생성
	//5. 메서드의 경우 public 
	
	//id 정보를 저장
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "JavaBean1 [id=" + id + "]";
	}
	
}
