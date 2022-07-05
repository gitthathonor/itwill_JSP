<%@page import="com.itwillbs.member.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Date"%>
<%@page import="com.itwillbs.member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/member/insertPro.jsp</h1>

	<%
		// 한글처리 
		request.setCharacterEncoding("UTF-8");
		// 전달된 정보(파라미터)저장 => 자바빈 MemberBean에 저장(액션태그)
		// MemberBean mb = new MemberBean();
		// mb.setId(request.getParameter("id"));
	%>
	<!-- 자바빈 객체 생성 -->
	<jsp:useBean id="mb" class="com.itwillbs.member.MemberBean"></jsp:useBean>
	<!-- 전달되는 파라미터값 저장 -->
	<jsp:setProperty property="*" name="mb" />
	
	<%=mb %>
	<%
	   // 회원 가입일자 생성
	   // 1) 시간정보를 직접 생성
	   mb.setReg_date(new Date()); 
	   // 2) 시간정보를 DB에서 생성
	%>
	<%=mb %>
	
	<h2> 전달된 정보 처리 완료 </h2>
	<h2> 정보를 DB로 전달 </h2>
	<%
		/* // 전달받은 정보를 DB로 전달
		// 1. 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 2. 디비 연결
		Connection con 
		= DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
		// 3. sql 작성 & pstmt 생성
		String sql = "insert into itwill_member(id,pass,name,gender,age,email,reg_date) values(?,?,?,?,?,?,now())";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		// ??
	    pstmt.setString(1, mb.getId());	
		pstmt.setString(2, mb.getPass());
		pstmt.setString(3, mb.getName());
		pstmt.setString(4, mb.getGender());
		pstmt.setInt(5, mb.getAge());
		pstmt.setString(6, mb.getEmail());		
		
		// 4. sql 실행		
		pstmt.executeUpdate(); */
		
		// DAO 파일을 사용한 디비 작업 
		MemberDAO mdao = new MemberDAO();
		
		mdao.insertMember(mb);
		
		
	%>
	<h2> 회원 가입 완료! </h2>


	<script type="text/javascript">
	   alert("회원 가입 완료!");
	   location.href="loginForm.jsp";	  
	</script>













</body>
</html>