<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp3/sessionSet.jsp</h1>
	
	<h2> session값을 생성(session 영역에 저장된 속성(attribute)) </h2>

	<%
		session.setAttribute("name", "ITWILL!");
		session.setAttribute("tel", "010-1231-1231");
		System.out.println("SET : 세션값을 생성완료! ");
		System.out.println("SET : 세션값을 세션영역동안에 사용 가능!");
	%>
	<!-- 페이지 이동 sessionTest.jsp -->
	<script type="text/javascript">
		alert("세션값 생성완료!");
		location.href = "sessionTest.jsp";
	</script>
</body>
</html>