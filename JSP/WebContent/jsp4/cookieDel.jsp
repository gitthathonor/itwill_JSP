<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp4/cookieDel.jsp</h1>

	<% 
		//쿠키정보를 받아오기(요청정보)
		Cookie[] cookies = request.getCookies();
		
		//배열을 전체 돌면서, "name"쿠키값을 사용-> 쿠키값 삭제
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("name")) {
					//쿠키값 삭제
					cookies[i].setMaxAge(0);
					//클라이언트 정보(쿠키)를 저장(localhost)
					
					response.addCookie(cookies[i]);					
				}
			}
		}
		//쿠키 데이터가 있을 때, 배열을 돌면서 처음부터 끝까지
		//name 쿠키정보 확인 -> 쿠키값 삭제
	%>
	
	<script type="text/javascript">
		alert("쿠키값 삭제 후 페이지 이동");
		location.href="cookieTest.jsp";
	</script>
</body>
</html>