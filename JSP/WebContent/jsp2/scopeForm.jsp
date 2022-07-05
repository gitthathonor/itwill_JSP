<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp2/scopeForm.jsp</h1>
	<%
		//내장객체 - page, request, session, application
		// => 영역객체
		// 위 4개의 객체는 데이터(속성-attribute)를 공유,
		//공유의 범위(scope)가 지정되어있음
		
		
		//p.209
		//영역(범위)					영역객체(사용)					속성의 유효범위
		//page						pageContext					해당 페이지
		//request					request						클라이언트 요청이 처리되는 페이지(include,forward)
		//session					session						세션정보가 유지되는 동안의 모든 페이지(하나의 브라우저)
		//application				application					서버가 실행되는 동안의 모든 페이지
		
		
		//* 속성(attribute)값을 저장하고 읽을 수 있는 메서드
		//setAttribute("이름(key)", "값");
		//getAttribute("이름(key)");
		
	%>
	<!-- scopePro.jsp 페이지로 정보 전달해서 출력(get) -->
	
	
	<form action="scopePro.jsp" name="fr" method="get">
		아이디 : <input type="text" name="id"><br>
		<input type="submit" value="전송">
	</form>
	
</body>
</html>