<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
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

	<h1>WebContent/jsp5/insertPro.jsp</h1>
	<%
	request.setCharacterEncoding("UTF-8");//한글처리
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	
	%>
	
	<h2>아이디 : <%=id %></h2>
	<h2>비밀번호 : <%=pass %></h2>
	<h2>이름 : <%=name %></h2>
	
	<hr>
	
	<h2> 0. 드라이버 설치 </h2>
	<h2> 1. 드라이버 로드 </h2>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println(" 드라이버 로드 성공! ");
	
	%>
	
	<h2>2. DB연결 </h2>
	
	<%
		Connection con =
		DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
	%>
		
		연결상태 : <%=con %> <br>
		
	<h2> 3. SQL 구문 작성 & Statement 객체(SQL구문 실행객체) 생성  </h2>
	
	<%
		//insert 구문
		//String sql = "insert into itwill_member(id, pass, name) values('admin', '1234', '관리자')";
		String sql = "insert into itwill_member(id, pass, name) values('"+id+"', '"+pass+"', '"+name+"')";
		
		//Statement 객체 생성
		//Statement stmt = con.createStatement();
		
		
		String preSql = "insert into itwill_member(id, pass, name) values(?,?,?)";
		
		//PreparedStatement 객체 생성
		PreparedStatement pstmt = con.prepareStatement(preSql);
		
		
		// 3-1. ? 처리
		//			xxxxx 컬럼의 데이터 타입형태로 처리
		//pstmt.setxxxxx(?의 위치, ?의 저장될 값);
		//SQL 구문의 ? 개수와 set()의 개수는 동일해야함.
				
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, name);
		
	%>
	
	<h2> 4. SQL 구문 실행 </h2>
	<%
		//stmt.executeUpdate(sql);
	
		pstmt.executeUpdate();
		System.out.println(" 회원정보 DB 저장 완료! ");
	
	%>
	
	
	
	
	
	
	<%-- 
		//전달된 정보(아이디, 비밀번호, 이름)
		//String id = request.getParameter("id");
		//String pass = request.getParameter("pass");
		//String name = request.getParameter("name");
	--%>
	
</body>
</html>