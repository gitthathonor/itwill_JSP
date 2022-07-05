<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp4/cookiTest.jsp</h1>
	
	<!-- P270, P279 -->
	<!-- 
	쿠키 : 이름, 값, 유효기간, 도메인, 경로... 구성되어있다.
	*쿠키의 이름은 알파벳, 숫자로 구성(공백,괄호,콤마...도 가능=>인코딩해야되서 불편)
	
	1)쿠키(객체) 생성
	2)쿠키 설정값 생성(유효기간, 도메인, 경로...)
	3)웹 브라우저에 정보 전송
	
	4)웹 브라우저 요청정보를 통해서 쿠키정보를 가져옴
	5)쿠키는 (이름, 값) 쌍으로 저장되어 있는 배열의 형태로 저장
	6)쿠키 이름을 사용해서 저장된 값을 사용
	
	쿠키 VS 세션
	
	세션 : 페이지 상관없이 값을 저장, 세션값은 서버에 저장, 보안상 중요데이터
	쿠키 : 페이지 상관없이 값을 저장, 쿠키값은 클라이언트에 저장, 보안상 덜 중요한 데이터
		=> 서버의 부하를 줄여줌
			
	 -->
	 
	 <%
	 	//요청정보에 있는 쿠키값을 가져오기
	 	Cookie[] cookies = request.getCookies();
	 	
	 
	 	String name = "";
	 	String value = "";
	 	//반복문을 사용하여 배열의 처음부터 끝까지 접근
	 	for(int i=0; i<cookies.length; i++) {
	 		//System.out.print(cookies[i].getName()+" : ");
	 		//System.out.println(cookies[i].getValue());
	 		if(cookies[i].getName().equals("name")) {
	 			name = cookies[i].getName();
	 			value = cookies[i].getValue();
	 		}
	 		
	 	}
	 %>
	 
	 
	 <h2>클라이언트</h2>
	 
	 
	 <h3>쿠키값 : <%=value%> </h3> <!-- name쿠키값 찾기 -->
	 
	 <input type="button" value="쿠키값 생성" onclick="location.href='cookieSet.jsp';">
	 
	 <input type="button" value="쿠키값 삭제" onclick="location.href='cookieDel.jsp';">
		
	
	
	
	
	
	
	
</body>
</html>