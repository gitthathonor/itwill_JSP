<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//영역객체를 생성(속성을 생성)
	pageContext.setAttribute("pValue", "ITWILL-pageContext Value!");
	request.setAttribute("rValue", "ITWILL-pageContext Value!!");
	session.setAttribute("sValue", "배고파");
	application.setAttribute("aValue", "피곤해");
	
	//session.setAttribute("id", request.getParameter("id") );
	
	//모든 클래스는 Object클래스를 상속
	//클래스에 명시적인 상속표현이 없을 경우
	//기본적으로 Object클래스를 상속함.(생략가능)
	//자동형변환(upcasting)의 장점은 타입을 구애받지 않을 수 있다는 점
	
	%>


<h1>WebContent/js2/scopePro.jsp</h1>
	<% 
	//전달된 파라메터값을 저장해서 출력
	//1. JSP 표현식 사용 출력
	//2. 자바코드(JSP)로 저장 후 출력
	request.setCharacterEncoding("UTF-8");
	%>
	표현식 id : <%=request.getParameter("id")%> <br>
	
	변수 id : 
	
	<%
	String id = request.getParameter("id");
	out.println(id);
	%>
	<hr>
	
	pageContext 내장객체의 값 : <%=pageContext.getAttribute("pValue") %> <br>
	request 내장객체의 값 : <%=request.getAttribute("rValue") %> <br>
	session 내장객체의 값 : <%=session.getAttribute("sValue") %> <br>
	application 내장객체의 값 : <%=application.getAttribute("aValue") %>	 <br>
	
	<hr><hr>
	
	<h2>페이지 이동에 따른 영역객체의 값</h2>
	<!-- 1. a태그 사용  -->
	<h3>a태그 : session, application 영역객체의 값을 사용가능</h3>
	<a href="scopePro2.jsp?id=<%=id%>&pw=1234">scopePro2.jsp 페이지 이동</a>
	
	<hr>
	<!-- 2. javascript 사용 -->
	<h3> JavaScript : session, application 영역객체의 값을 사용가능</h3>
	<%-- <script type="text/javascript">
		alert("scopePro2.jsp 페이지로 이동"); //scopePro를 거치고 간다는 것 확인!!!
		location.href='scopePro2.jsp?id=<%=id%>&pw=1234'; 
		//javascript에서도 jsp표현식을 사용할 수 있다. 그러나 head영역에서는 사용하기가 힘든 부분이 있는 것이 아직 자바 코드로
		//아무것도 설정되지 않았기 때문에
	</script> --%>
	
	<!-- 3. jsp - response 사용 -->
	<!-- 
		jsp 페이지 실행순서 
		:1.jsp 코드(java)- 2. html코드(액션태그 포함) - 3.javascript코드
		
		*js 페이지 이동과, response 페이지이동은 동시에 사용하면 안된다.
		-->
	
		<h3>response 객체 사용 : session, application 영역객체의 값을 사용가능</h3>
		<% 
		//System.out.println("JSP 페이지 이동!");
		//response.sendRedirect("scopePro2.jsp?id="+id+"&pw=1234");
		%>
		
		<h3>forward 액션태그(html코드) : request, session, application 영역객체의 값을 사용가능</h3>
		<!-- 
			포워딩으로 이동시 기존의 주소변경 x, 화면은 변경 o - MVC패턴 시 필요
			request, response 객체의 정보를 전달(Java코드로 확인)
		 -->
		
		<jsp:forward page="scopePro2.jsp">
			<jsp:param value="123456aaa" name="pw"/>
		</jsp:forward>
		
		
		
		
	
	<!-- <hr><hr>
	<form action="scopePro2.jsp" name="fr2" method="get">
		비밀번호 : <input type="password" name="pw"> <br>
		<input type="submit" value="전송">
	</form> -->
	
	
	
	
</body>
</html>