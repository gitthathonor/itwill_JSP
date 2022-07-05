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
	<h1>WebContent/jsp5/DBConTest.jsp</h1>

	<h2> DB 연결 </h2>
	
	<%
		//0. JDBC 드라이버를 설치(프로젝트마다)
		//  /WEB-INF/lib/mysql-connector-java-8.0.27.jar 설치
		
		//1.  설치한 드라이버를 로드
		//com.mysql.cj.jdbc.Driver (Mysql-5.xxxx)
		Class.forName("com.mysql.cj.jdbc.Driver"); //Mysql-8.xxxx
		
		System.out.println(" 드라이버 로드 성공! ");
		
		//2. 드라이버를 사용해서 DB연결
		//DriverManager.getConnection("DB주소", "아이디", "비밀번호");
		
		// [jdbc:mysql://localhost:3306/jspdb]
		//   프로토콜  / DB주소(ip):포트 / DB이름
		// [http://localhost:8088/JSP/jsp5/DBConTest.jsp]		
				
		
		
		Connection con = 
		DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
		
		System.out.println(" DB연결 성공! ");
		System.out.println(" con : " + con);
		
	%>

</body>
</html>