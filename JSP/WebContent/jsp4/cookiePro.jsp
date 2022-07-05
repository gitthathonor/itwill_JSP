<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp4/cookiePro.jsp</h1>

	<%
	//1) cookieForm.jsp 페이지에서 전달된 정보를 저장
	String language = request.getParameter("language");
	//2) 그 정보를 사용해서 쿠키값으로 생성, 쿠키값 이름 "lang"
	Cookie cookie = new Cookie("lang", language);
	//3) 쿠키 설정값 - 사용시간 1시간
	cookie.setMaxAge(3600);
	//4) 클라이언트 응답정보에 저장해서 전달
	response.addCookie(cookie);
	//5) js 사용페이지 이동(cookieForm.jsp 이동)
	%>
	
	<script type="text/javascript">
 		alert("언어 정보 생성 완료!");
 		location.href="cookieForm.jsp";
	</script>
	
	
	
</body>
</html>