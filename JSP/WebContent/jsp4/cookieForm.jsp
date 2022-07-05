<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp4/cookieForm.jsp</h1>
	
	<%
	
		String lang = "korea";
		//1)쿠키값 가져오기(요청정보-request)
		Cookie[] cookies = request.getCookies();
		//2)쿠키값이 있을 때, 쿠키 이름이 "lang"인 대상의 값을 꺼내서 사용
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("lang")) {
					lang = cookies[i].getValue();
				}
			}
		}

		//3)한국어 - "안녕하세요 쿠키연습!", 영어 - "Hello CookieTest!" 출력하기
		if(lang.equals("korea")) {
			out.println("안녕하세요 쿠키연습! <br>");
		} else {
			out.println("Hello CookieTest! <br>");
		}
		
		//*쿠키가 없는 상태에서는 기본값 '한국어'처리
		//lang의 초기값을 "korea"로 설정해주면 된다.
		
		//*각 언어별 라디오버튼 체크

	%>
	
	<form action="cookiePro.jsp" method="post">
		<input type="radio" name="language" value="korea" 
		<%if(lang.equals("korea")) { %>
		checked
		<% } %>
		> 한국어
		<input type="radio" name="language" value="english" 
		<%if(lang.equals("english")) { %>
		checked
		<% } %>
		> 영어
		<br>
		<input type="submit" value="언어 설정하기!">
	</form>

</body>
</html>