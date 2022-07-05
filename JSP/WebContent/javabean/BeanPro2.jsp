<%@page import="javabean.JavaBean2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/javabean/BeanPro.jsp</h1>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String num = request.getParameter("num");
		//int num = Integer.parseInt(request.getParameter("num"));
		
		//자바 코드 사용
		JavaBean2 jb2 = new JavaBean2();
		jb2.setId(id);
		jb2.setPass(pass);
		//jb2.setNum(Integer.parseInt(request.getParameter("number")));
		jb2.setNum(num);
	%>
	
	아이디 : <%=id%> <br>
	비밀번호 : <%=pass%> <br>
	좋아하는 숫자 : <%=num%> <br>
	
	
	<h3>자바 코드 사용</h3>
	아이디 : <%=jb2.getId()%>
	비밀번호 : <%=jb2.getPass()%>
	숫자 : <%=jb2.getNum()%>
	
	<h3> 자바빈 액션태그 사용 </h3>
	
	<jsp:useBean id="jb3" class="javabean.JavaBean2"></jsp:useBean>
	<%-- <jsp:setProperty property="id" name="jb3" param="id"/> --%>
	<!-- 전달되는 모든 파라미터의 값을 객체의 변수에 저장 -->
	<jsp:setProperty property="*" name="jb3"/>
	
	
	아아디(자바빈) : <jsp:setProperty property="id" name="jb3"/> <br>
	비밀번호(자바빈) : <jsp:setProperty property="pass" name="jb3"/> <br>
	숫자(자바빈) : <jsp:setProperty property="num" name="jb3"/> <br>
	<%-- <jsp:setProperty property="*" name="jb3"<br> (x) /> --%>
	
	
	<%-- <h2>자바비 객체로 만들어서 출력</h2>
	아이디 : <%=jb2.getId()%> <br>
	비밀번호 : <%=jb2.getPass()%> <br>
	숫자  : <%=jb2.getNum()%> --%>
</body>
</html>