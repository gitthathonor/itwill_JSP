<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp2/scopePro2.jsp</h1>
	<%-- <%
	session.setAttribute("password", request.getParameter("pw"));
	%> --%>
	
	
	
	
	<%-- 아이디 : <%=session.getAttribute("id")%><br>
	비밀번호 : <%=session.getAttribute("password") %><br> --%>
	
	a태그 get방식 id : <%=request.getParameter("id")%><br>
	a태그 get방식 pw : <%=request.getParameter("pw")%>
	
	<hr>
	
	javascript로 id : <%=request.getParameter("id") %><br>
	javascript로 pw : <%=request.getParameter("pw") %>
	
	<hr>
	
	jsp로 id : <%=request.getParameter("id") %><br>
	jsp로 pw : <%=request.getParameter("pw") %>
	
	
	
	<hr>
	
	pageContext 내장객체의 값 : <%=pageContext.getAttribute("pValue") %> <br>
	request 내장객체의 값 : <%=request.getAttribute("rValue") %> <br>
	session 내장객체의 값 : <%=session.getAttribute("sValue") %> <br>
	application 내장객체의 값 : <%=application.getAttribute("aValue") %>

</body>
</html>