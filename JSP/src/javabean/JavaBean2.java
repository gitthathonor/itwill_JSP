package javabean;

public class JavaBean2 {
	private String id;
	private String pass;
	private String num;
	
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
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "JavaBean2 [id=" + id + ", pass=" + pass + ", num=" + num + "]";
	}
	
}
