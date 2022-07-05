<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp4/cookieSet.jsp</h1>
	<h2>웹서버 (WEB/WAS)</h2>
	<%
		//쿠키값 생성(서블릿 API사용)
		Cookie cookie = new Cookie("name", "ITWILL");
		//-> 메모리에 올라갔을까? YES, HDD에 저장 되었나? NO
			
		//쿠키 설정값 지정
		cookie.setMaxAge(600); //600ch => 10분
		
		//쿠키 정보를 전달(응답정보에 담아서)
		response.addCookie(cookie);
	%>
	
	
	<script type="text/javascript">
		alert("쿠키값 생성 후 페이지 이동");
		location.href="cookieTest.jsp";
	</script>
</body>
</html>