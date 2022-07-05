<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp5/select.jsp</h1>
	
	<%
	// 1. 드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("드라이버 로드 성공!");
	// 2. DB 연결
	
	Connection con = 
		DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
	System.out.println("DB연결 성공!");
	// 3. sql 구문 작성 & pstmt 객체 생성
	String sql = "select * from itwill_member";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	// 4. sql 구문 실행
	
	ResultSet rs =  pstmt.executeQuery();
	System.out.println("SQL구문 실행완료");
	
	
	//SQL 구문 실행메서드
	//pstmt.executeQuery(); - SELECT //그냥 조회
	//pstmt.executeUpdate(); - INSERT, UPDATE, DELETE //테이블의 값이 조작됨	
	
	//5. 데이터 처리
	/* if(rs.next()) { //데이터 있을 때
		//rs.getXXXX("컬럼명"); rs.getXXXX(인덱스);
		//DB에서 가져오는 데이터 타입에 따라서 메서드 변경
		//
		
		
		/* String id = rs.getString("id");
		String pw = rs.getString("pass");
		String name = rs.getString("name");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		out.println(id);
		out.println("pass : " + pw);
		out.println("name : " + name); */
	//} */
	String id = null;
	String pw = null;
	String name = null;
	
	while(rs.next()) {
		id = rs.getString("id");
		pw = rs.getString("pass");
		name = rs.getString("name");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		out.println("id : " + id);
		out.println("pass : " + pw);
		out.println("name : " + name);
	}
	
	%>
	
	<%=id%>
	
	
	
	
</body>
</html>