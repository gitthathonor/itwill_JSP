<%@page import="javabean.JavaBean1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/javabean/BeanPro1.jsp</h1>
	<%
		String id = request.getParameter("id");
		
		//자바빈 객체를 생성 JavaBean1
		JavaBean1 jb1 = new JavaBean1();
		//jb1.setId(id);
		jb1.setId(request.getParameter("id"));
		System.out.println(jb1);
	%>
	
	<!-- 액션태그  -->
	<!-- 객체 생성 -->
	<jsp:useBean id="jb" class="javabean.JavaBean1"></jsp:useBean>
	<%-- <jsp:useBean id="jb" class="javabean.JavaBean1"></jsp:useBean>  --%>
	
	<!-- 정보 저장 -->
	<jsp:setProperty property="id" name="jb"/>
	<%-- <jsp:getProperty property="id" name="jb" param="id"/> --%> 
	<%-- <jsp:getProperty property="*" name="jb" param="*"/> --%> 
	<%-- <jsp:getProperty property="*" name="jb"/> --%> 
	<!-- param="파라미터명", property="속성명"이 동일한 경우 param을 생략가능 -->
	
	<!-- 정보 출력 -->
	<%-- <jsp:getProperty property="id" name="jb"/><br> --%>
		<jsp:getProperty property="id" name="jb" param="id"/><br>
	
	
	
	전달된 아이디 : <%=id%>
	<hr>
	<h2> 자바빈객체 </h2>
	아이디값  : <%= jb1.getId()%> <br>
	

</body>
</html>