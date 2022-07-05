<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp1/Test2.jsp</h1>
	
	<h2>JSP 구성요소</h2>
	<h3>1. JSP 지시어(Directive) : 사용자가 요청한 JSP페이지 실행시 필요한 정보를 지정</h3>
	 	태그를 @로 사용하여 시작 [page, include, taglib] 3가지 동작 사용<br>
		p150~ <br>
		
	<h3>2. JSP 선언문 (Declaration) : 멤버변수, 메서드를 선언하기 위한 선언문</h3>
		<  %! <br>
			private String name = "홍길동"; <br>
			public void method() {  }<br>
		
		% >
		
		<%!
			String name="홍";
		%>
		
	<h3>3. 스크립틀릿(Scriptlet) : JSP코드를 사용하는 방법, JSP(java)프로그래밍 코드</h3>
		< % % > <br>
		태그가 여러 개로 나눠져 있어도 하나의 코드로 인식 <br>
		<%
			int age = 10;
			System.out.println("TEST");
			System.out.println(name); //멤버변수
			System.out.println(age); //지역변수
		%>
		
	<h3>4. 표현식(Expression) : 선언문, 스크립틀릿 태그에 선언된 값을 화면에 출력하는 방법</h3>
		< %= 변수, 메서드(리턴값이 있는 것), 수식 % > <br>
		
		<%=age %> <br>
		
	<hr>
	<h3>JSP 내장 객체 p177~</h3>
		JSP 페이지에서 제공되는 기본 객체, 이미 생성된 객체들(객체 생성없이 사용가능)...<br>
		javax.servlet 패키지(8개), java.lang 패키지(1개)<br>
		=> JSP 내장객체는 JSP페이지가 서블릿클래스(.java)로 변경될 때, 
		_jspService() 메서드 안에서 가장먼저 선언됨 => 객체 생성없이 사용가능!!
		
		<h3>javax.servlet 패키지</h3>
		<h4> request : 클라이언트의 HTTP요청정보를 저장</h4>
		<h4> response : HTTP요청에 따른 응답정보 저장</h4>
		<h4> session : 클라이언트의 세션정보를 저장</h4>
		<h4> pageContext : 페이지 실행에 필요한 컨텍스트(프로젝트) 정보 저장</h4>
		<h4> out : 응답 페이지 전송을 위한 출력 스트림객체</h4>
		<h4> application : 어플리케이션 컨텍스트 정보를 저장</h4>
		<h4> config : 페이지의 서블릿 설정파일 객체 </h4>
		<h4> page : 해당페이지 서블릿 객체</h4>
		
		<h3>java.lang 패키지</h3>
		<h4> exception : 예외처리 처리하는 객체 </h4>
		
		<hr>
		
		<h2> request 객체 </h2>
		
		서버 도메인 명 : <%=request.getServerName() %><br>
		서버 포트번호 : <%=request.getServerPort() %><br>
		
		URL : <%=request.getRequestURL() %> <br>
		URI : <%=request.getRequestURI() %> <br>
		
		클라이언트 호스트명 : <%=request.getRemoteHost() %><br>
		클라이언트 IP주소 : <%=request.getRemoteAddr() %> <br>
		
		프로토콜 : <%=request.getProtocol() %> <br>
		요청(전송) 방식 : <%=request.getMethod() %><br>
		프로젝트(컨텍스트)경로 : <%=request.getContextPath() %><br>
		
		<hr>
		http헤더 이름 (user-agent) : <%=request.getHeader("user-agent") %> <br>
		http헤더 이름 (accept-language) : <%=request.getHeader("accept-language") %> <br>
		http헤더 이름 (host) : <%=request.getHeader("host") %> <br>
		http헤더 이름 (connection) : <%=request.getHeader("connection") %> <br>
		
		
		<h3> response 객체 </h3>
		<%
			// JSP를 사용한 페이지 이동
			//response.sendRedirect("Test1.jsp");
			//response.setHeader(arg0, arg1);
			//response.setContentType(arg0);
			//response.addCookie(arg0);
			
			
			//3초뒤 페이지 이동
			//response.addHeader("Refresh", "3;url=Test2.jsp");
			
		%>
		
		<h3> session 객체 </h3>
		세션 ID값 : <%=session.getId()%> <br>
		세션 최초생성시간(ms) : <%=session.getCreationTime() %> <br>
		세션 최종접속시간(ms) : <%=session.getLastAccessedTime() %> <br>
		세션 유지시간(1800초, 30분) : <%=session.getMaxInactiveInterval() %> <br>
		
		<%
			//세션 유지시간 변경
			session.setMaxInactiveInterval(180);
			session.getMaxInactiveInterval();
		%>
		
		
		
</body>
</html>