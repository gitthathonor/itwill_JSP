<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp1/testPro2.jsp</h1>
	<%
	//페이지 정보 전달시 post방식의 경우는 한글이 깨짐(한글 처리)
	
	request.setCharacterEncoding("UTF-8"); //한글 인코딩
	
	
	
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	//int age2 = Integer.parseInt(age);
	//int age3  Integer.parseInt(request.getParameter("age"));
	
	

	if(Integer.parseInt(age)>=20) {
		out.println("입력정보 : "+name+"("+age+"세) - 성인입니다.");
	} else {
		out.println("입력정보 : "+name+"("+age+"세) - 미성년자입니다.");
	}
	
	
	%>
	
	
	<%-- 입력정보 : <%=name %>(<%=age %>세) <br>
	
	<%
		if(age2 >= 20) {
			out.println("성인 입니다.");
			%>
			<h3>성인!!!</h3>
			<%
		}else {
			out.println("미성년자 입니다.");
			%>
			<h3>미성년자!!!</h3>
			
		} --%>
	
	
	
	

</body>
</html>