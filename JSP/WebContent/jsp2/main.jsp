<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- color.jspf 파일을 가져와서 (소스 통합") 컴파일 -->    
<%@ include file="color.jspf"%>    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=col4%>">
<h1>WebContent/jsp2/main.jsp</h1>
	
	
<!-- 액션태그 java(jsp)코드의 동작을 수행가능한 태그  
	*JSP 코드에서만 사용가능
-->
<%-- <jsp:~></jsp:~> --%>

 <table border="1" width="600" height="600">
 	<tr>
 		<td colspan="2" height="100">
 		<!-- top -->
 		<!-- include 한 페이지에 파라메터를 전달  -->
 		<!-- include 액션태그 안에서 주석문 사용x  -->
 		<jsp:include page="top.jsp">
 			<jsp:param value="userid" name="itwill"/>
 		</jsp:include>
 		</td>
 	</tr>
 	<tr>
 		<td width="100">
 		<jsp:include page="left.jsp"></jsp:include>
 		</td>
 		<td></td>
 	</tr>
 	<tr>
 		<td colspan="2" height="100">
 		<jsp:include page="bottom.jsp"></jsp:include>
 		</td>
 	</tr>
 </table>
 <hr>
 
 <h2>JSP페이지 include</h2>
 <h3>1. jsp:include (액션태그)</h3>
 	자바파일로 컴파일 후에 결과물을 추가
 	각각의 페이지가 컴파일(서블릿) 후 통합
 	=> 페이지 추가(영역 구분)
 
 
 <h3>2. @ include ~ (지시어)</h3>
 	각 파일이 컴파일 전에 하나로 합쳐서 컴파일 
 	=> 공통으로 사용해야하는 변수값
 
 


</body>
</html>