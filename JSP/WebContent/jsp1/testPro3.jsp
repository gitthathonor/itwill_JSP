<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp/testPro3.jsp</h1>
<% 
//한글처리
request.setCharacterEncoding("UTF-8");
%>


<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String sex = request.getParameter("sex");
	//String[] hobby = request.getParameterValues("hobby");
	String[] sel = request.getParameterValues("sel");
%>



이름 : <%=name%> <br>
나이 :  <%=age%> <br>
성별 :  <%=sex%> <br>
<!-- 취미 :  -->

<% 
//for(int i=0; i<hobby.length; i++) {
//	out.println(hobby[i]);
//}
%>
<br>

강의실 : 
<%
for(int i=0; i<sel.length; i++) {
	out.println(sel[i]);
}
%> 
<br>

<%-- 이름 : <%=request.getParameter("name")%> --%>

<% 
	//다중선택되어있는 hobby정보 저장
	String[] arr = request.getParameterValues("hobby");
	

	if(arr != null) {
		for(int i=0; i<arr.length; i++) {
		out.println("취미 : " + arr[i]+"<br>");
		}
	}
%>






</body>
</html>