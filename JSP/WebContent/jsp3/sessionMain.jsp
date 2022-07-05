<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp3/sessionMain.jsp</h1>

	메인 페이지 입니다. <br>
	
	<%
		//전달받은 로그인 정보를 사용해서 로그인 여부 체크
		String id = (String)session.getAttribute("loginID");
	
	%>
	
	
	<!-- 아이디 : <%--session.getAttribute("loginID")--%> -->
	
	<%
	if(id==null) {
		//세션정보가 없음 => 로그인 x
		response.sendRedirect("sessionLoginForm.jsp");
	}
	%>
	
	
	<h2> <%=id%>님 환영합니다~~!</h2>
	
	<!-- 로그아웃 버튼 생성 -->
	
	
	<input type="button" value="로그아웃!" onclick="location.href='sessionLogout.jsp'">
	
	
	
</body>
</html>