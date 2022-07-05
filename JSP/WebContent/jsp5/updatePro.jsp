<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp5/updatePro.jsp</h1>
	<% 
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("userID");
		String pass = request.getParameter("userPW");
		String name = request.getParameter("userName");
		
		//전달된 ID, PASS 정보가 동일한 경우에만 이름을 수정(DB)
		
		//1. 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		//2. DB연결
		Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
		//3. Sql구문 작성 & pstmt 객체 생성
		String sql = "update itwill_member set name=? where id=? and pass=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		//? 채우기
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, pass);
		
		//4. pstmt 실행
		 pstmt.executeUpdate();
	%>
	<h2> 회원 정보(name) 수정완료! </h2>
	
	
	
	
	<%-- 아이디 : <%=id%> <br>
	비밀번호 : <%=pass%> <br>
	이름 : <%=name%> <br> --%>
	
</body>
</html>