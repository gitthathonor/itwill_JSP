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
<h1>WebContent/jsp5/deletePro.jsp</h1>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con =
				DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
		
		//String sql = "delete from itwill_member where id=? and pass=?";
		String sql = "select pass from itwill_member where id=?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		//4. pstmt 실행
		ResultSet rs = pstmt.executeQuery();
		
		//5. 데이터 사용하기
		if(rs.next()) {
			//아이디가 있다.
			if(pass.equals(rs.getString("pass"))) {
				//본인 - 탈퇴
				//3. sql (delete 구문)
				sql = "delete from itwill_member where id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				//4. sql실행
				pstmt.executeUpdate();
				System.out.println("삭제 성공!!!");
				
			} else {
				//비밀번호 에러
				out.println("비밀번호 에러");
			}
			
		} else {
			//아이디가 없음
			out.println("아이디 없음!!!");
		}
		
		
	%>


	<h2> 회원 탈퇴 완료 ! </h2>

</body>
</html>