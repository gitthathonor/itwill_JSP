<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp3/sessionTest.jsp</h1>
	
	<h2>session 객체 : 웹 서버의 상태를 유지하기 위해서 사용하는 값,
		웹 브라우저당 1개씩 생성 (서버에서 관리)
	</h2>
	
	<%
		String name = (String)session.getAttribute("name");
		String tel = (String)session.getAttribute("tel");
		
		//세션값이 없을 경우 null대신에 "세션값 없음!"
		if(name==null) {
			name="세션값 없음";
		} 
		if(tel==null) {
			tel="세션값 없음";
		}
		
	%>
	<h3> 세션값 : <%=name%></h3>
	<h3> 세션값2 : <%=tel %></h3>
	<!-- 전화번호(tel):010-1231-1231  -->
	
	
	<input type="button" value="세션값 생성!" onclick="location.href='sessionSet.jsp';">
	<input type="button" value="세션값 삭제!" onclick="location.href='sessionDel.jsp';">
	<input type="button" value="세션값 초기화!" onclick="location.href='sessionInval.jsp';">
	
	
	
</body>
</html>